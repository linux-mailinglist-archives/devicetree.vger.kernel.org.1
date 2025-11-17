Return-Path: <devicetree+bounces-239255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BE8C63077
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 335574E0498
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E313531B80C;
	Mon, 17 Nov 2025 09:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g+i6tsE1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="amoCK6gy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4020E27E060
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370202; cv=none; b=JS2ZiOKDBXzzEo//LMXYoJfPv2clmzMgqZLK96D179xLpSht9Ro+Z7BiFDIevCTpiOwZOrDyz4fyGKB0vTTh3LMqN5lZMQQmJE+1VonV8datqzyolqjIbKlbeXr36DWSKjHk8UxFbq93W6IbVTsTYf8F3LFvYYji/WezIGw+9Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370202; c=relaxed/simple;
	bh=iI/uLAuLDiXKC4Y5GAV9MgZncy5q3E68rkYV8yke1eI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f8k9sGBSMnsPcsLtunaV7W3iZLUzpmf6uGRXqyD8XDGTgbnwKiVYpnnAtxg9jngs3wCJhrP8bR70fv1Y9ecEHBsNQhkmHOU8mdnkbe7BXZakLU2i40ROsbp5s6bPKRjKGSkLTTJOoXEYNP9gtm3q0NC4pEBlbTTqruiDwc5c6H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g+i6tsE1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=amoCK6gy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4oB1K2792283
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:03:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l654H++wrDIKhs+Oc2+S/1MIjCYK8NtPLyiTdYbJ5eY=; b=g+i6tsE1I3TokNcC
	xoXFTu3nj19oy2f714qq/GoTofyV8Rx3bpt1WU047aU7/WGedHVqZK0cG46xrYUZ
	O1NfU7ixAll4BeOk+Ym4jSiZ9Fe95OJWEuzo8E85KTY/BrS4AXRS9yqKMIrTmG7F
	F0VprbD17e0E1UF29WGFFlHkWqO/I5j9OfMEFU2Q8XgK04+ZI0g94gQFyZOT2O+0
	QK2cNKmn862pjLM+uLW7cWPvNdWzPJk6UDTTGXf96dxt7WI9u/Bro7aZYUbgRoGW
	KaUcXbPaS+IDrWZOrKrn+oHJFYiXc5uQoTWhr2krUr4jVBOwPb7txeSlLMLEJ1/k
	7JVm6w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4afu5bgwhc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:03:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2958a134514so53927335ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763370200; x=1763975000; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l654H++wrDIKhs+Oc2+S/1MIjCYK8NtPLyiTdYbJ5eY=;
        b=amoCK6gyVXeFBfKNVXmwlWjdsx0JF22kSX/6WBykBy0pVUNkfATawLH3JYMnrbDk9H
         lfaj87cLMDxJuDKF2C0eRjTnWPFkOvbrK88LD4UCucrLKbvGvngqcStMt5+O60DkhSqU
         WOnwm7O5dY4lsefkhFnV2CmeUNym9peZRGP6KBLCFAbhpigQa0GUoayLA/ApGUb1t+9F
         /axu96Mfl//66ROaVMnNxoyfmBBTKyvUhiKXgghFCK7PHO4vV4Nkq07T1F8aaUOWNiSR
         f3gnPlCk7k0EThBeelIaGxTF1OVmm1yMyNI+Qp+LAzNj78RKmlyxjAOCx+KUqWUOVI3a
         N2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763370200; x=1763975000;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l654H++wrDIKhs+Oc2+S/1MIjCYK8NtPLyiTdYbJ5eY=;
        b=lCNjvTsbZn3bZVTyreMq33LJUHcZpokwRLrr3I3O45TNVUpVLlf7ElfmeOIfFD5fRI
         Qu8ZL/k8GjPh8aHtzRwmEP2pEjOy0GcDI0igBFv821GOGcHuN9Qy4P8gEVQdIztm6NQW
         UEgkE6x1hpOrnRku/Qy2QtgKbynJVWsCHjJasfZwpx9kP2brtIEd9DGCoopYaXQt6gxf
         yG+vPk1QHz3gdABemB9AkF3gBM6K0VZE3Gsp/pZNXE2yJLL66dp0JyAYYo3Z16QdJwP0
         gt7smBj9bJCdGaLcHwXzeEopDnsMKGDqsUVtWjCYH2dC4VyBTSUrGt5IgJpFiAJOze0G
         dcmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWByYBXjRlTePOPVKoEF9aE1X7hU7fF19jS6qbIRstJjC8DTsCpZ/6Lac+/8dNruk8pkvsEZEy9o1r2@vger.kernel.org
X-Gm-Message-State: AOJu0YxfOq5kP5Qz/RGKPaa0LrOnymiHAFONOWwxjC6xffle5uEqhOXc
	4IflQV1oGd9NkyKjgRVllEgTwcglk7UMtXgM+KSFICv8iKKE6PACDjSrZ0Cn1qRw57fOpPUPY1Z
	PAiZDfyJyPqfqT/a6RvcS35+wbcK7kO8noNjLacvlZcAq4FOxVLnE9ZlK2yw6IrsZ
X-Gm-Gg: ASbGncshfOtbOfA8df1ZwOrAfC95TkKfQM7OnH31Ap6OiAC7f2SH3a8u44DWNBgBWLg
	Ai67uEYtyy8LZoerW8ZpescW7GbciX2kWSwqU7dZeUoUVmcIfX/IbVX4fDmJaaMtiyJReooihbE
	AOMTxBSb4MKyNipUvXkb6Tx/9sv3Obp4amFoJd/66Ui6WRfqgKQ7K8WSw/iJ83l0r93A3uWu/WF
	xHZAuRN/w1UT04UuvtAaViOGeFrPBtnIyYjcq0noww1bRmFN2C6btGA4XE+kCaZB4bqLpRTPc9e
	UWJ3gpITeMDrDRcW8BfqBuSSG25AIBs77bIONqL00zFNJVlXNIExmmh/bf6wX798CPtfXz1sOt/
	bPMcAdL4OtyLH
X-Received: by 2002:a17:903:2f88:b0:295:8dbb:b3cd with SMTP id d9443c01a7336-2986a6ec9b6mr128086345ad.27.1763370199671;
        Mon, 17 Nov 2025 01:03:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFV/ytKTe+tDWjtXCC5OfPxzLvXpbLuv9zHdmNqMNf952FZHcVn7M15VmQeRSV6ylQ2cAqHw==
X-Received: by 2002:a17:903:2f88:b0:295:8dbb:b3cd with SMTP id d9443c01a7336-2986a6ec9b6mr128086065ad.27.1763370199146;
        Mon, 17 Nov 2025 01:03:19 -0800 (PST)
Received: from work ([120.60.57.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0c57sm132940035ad.54.2025.11.17.01.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:03:18 -0800 (PST)
Date: Mon, 17 Nov 2025 14:33:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] dt-bindings: wireless: ath: Deprecate
 'qcom,calibration-variant' property
Message-ID: <tratduwv3edhhu2wjqorfkahpuwusx7uvr4fdgzo5wwz7rzdnx@iyxp2nc7ksha>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <20251114-ath-variant-tbl-v1-2-a9adfc49e3f3@oss.qualcomm.com>
 <b9b4f1bb-45ef-404e-b75e-962e85a557a2@kernel.org>
 <fmumja63j3xvbvfxlmtnkfubgw4jwo5f43srrpfgqrxyqknrj4@izsqazgbiehp>
 <1703d8d7-5105-4585-b8f0-82bb54809718@kernel.org>
 <kve3f7zkywwsfkylom3jp4e3ejlspnlvnmlkuq77uy6fqsy5dt@gaitvppj2jcw>
 <7757501b-2576-4f5d-a16a-40e06f12cb5f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7757501b-2576-4f5d-a16a-40e06f12cb5f@oss.qualcomm.com>
X-Proofpoint-GUID: mKeatq8KMDaulbUl-JFrNBUPu8TvMvuu
X-Proofpoint-ORIG-GUID: mKeatq8KMDaulbUl-JFrNBUPu8TvMvuu
X-Authority-Analysis: v=2.4 cv=Xvz3+FF9 c=1 sm=1 tr=0 ts=691ae4d8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=SvArCPxluHhT4bP621h3eQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cS6S4_kxOddRYArucPIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA3NSBTYWx0ZWRfX91FdJThUKeX7
 FwfopkkOv2WpJQf3KUUQJkPD/P3eWUZPTJ/B6h9YEPBySn3ZVr+bRnS/XzKV5wzRCDKvd/MYChN
 y1aTPUXHHyUgwAVv49PZ9bFcJ4c74Z3LpOpdBBT3trQ1scT6KX3RaAbMwztkQcGLKjM7xyIQEkK
 6yNdHM69LffYDaQuKBcofgEgWpKJEM+lUNJHpIcBmBvCGb6xyEWsE6KX8dzhAzN1mvpGhCbXLeL
 MxfYrTzVnM9lvF2yeUEPP862jyj7GT6rs9DTh0PsJep6RrJNHb9q/jLLDFCt8HeWqNG75dyVMfH
 iddXXl71MsJuWBBdEvxSYvvJ83MMG3oQdiRMHHyQQzxE36hfFeYIygKSlyZsppTcVJXfu0GoIER
 /mLeGS2z9uDV0dKOorEdSTqzBzIUxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170075

On Fri, Nov 14, 2025 at 09:29:46AM -0800, Jeff Johnson wrote:
> On 11/14/2025 3:18 AM, Manivannan Sadhasivam wrote:
> > On Fri, Nov 14, 2025 at 12:04:55PM +0100, Krzysztof Kozlowski wrote:
> >> On 14/11/2025 12:02, Manivannan Sadhasivam wrote:
> >>> On Fri, Nov 14, 2025 at 11:47:25AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 14/11/2025 11:22, Manivannan Sadhasivam wrote:
> >>>>> On devicetree platforms, ath{10k/11k} drivers rely on the presence of the
> >>>>> 'qcom,calibration-variant' property to select the correct calibration data
> >>>>> for device variants with colliding IDs.
> >>>>>
> >>>>> But this property based selection has its own downside that it needs to be
> >>>>> added to the devicetree node of the WLAN device, especially for PCI based
> >>>>> devices. Currently, the users/vendors are forced to hardcode this property
> >>>>> in the PCI device node. If a different device need to be attached to the
> >>>>> slot, then the devicetree node also has to be changed. This approach is not
> >>>>> scalable and creates a bad user experience.
> >>>>>
> >>>>> So deprecate this property from WLAN devicetree nodes and let the drivers
> >>>>> do the devicetree model based calibration variant lookup using a static
> >>>>> table.
> >>>>>
> >>>>> This also warrants removing the property from examples in the binding.
> >>>>>
> >>>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> >>>>> ---
> >>>>
> >>>> The problem - visible in one of the examples here - is that one board
> >>>> has multiple WiFi chips and they use different calibration-variant
> >>>> properties. How do you find the right calibration variant for such case
> >>>> based on board machine match?
> >>>>
> >>>
> >>> I suspect the legitimacy of the example here. I don't understand how a single
> >>> machine can have same devices with 3 different calibration data.
> >>
> >> Me neither but I am not the domain expert here.
> >>
> >>>
> >>> AFAIU, calibration data is specific to the platform design. And I don't see any
> >>> upstream supported devicetree having similar properties.
> >> Deprecating these is fine with me, but I would prefer if we get here
> >> some clear answers that mentioned case cannot happen. If you are sure of
> >> that, please mention it in commit msg.
> >>
> > 
> > I'm pretty sure that this example is wrong. But I will wait for Jeff or other
> > ath developers to confirm.
> 
> As discussed privately this is a valid example. This is a single-band chip. So
> a tri-band router platform will have 3 boards, one that is supporting 2 GHz,
> one supporting 5 GHz, and one supporting 6 GHz, and each frequency range will
> have different calibration data.
> 
> So we still need to support slot-specific configuration in cases where the
> slot to board mapping really is fixed in the platform.
> 

Thanks for letting me know of the multi-band usecase, which I was not aware of.
Yes, this property has to be used for those special usecases, so we cannot
deprecate it. But going forward, for the single calibration data usecase (like
almost all upstream DTS), this static table should be used.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

