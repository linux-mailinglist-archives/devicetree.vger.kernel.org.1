Return-Path: <devicetree+bounces-238629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AA029C5CC94
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 659334E14CB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0F32C1786;
	Fri, 14 Nov 2025 11:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c8j8d+hF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RC1hl/0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7025D3115A6
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118395; cv=none; b=qYQZnSsVM5fsAT/iC5/+PoGPyQdfOfBwMin2+GeU//g16c61y8YiE0bDZ0ivaqcHofAcl2REfXkmN/O+mv6H+Gzw+xDDyny7zck6h43jF1SG4/BAqdUdMarlYkNU6OSJioKWFc4o52yrmTGNcJR+es2Auzhgk/DLmjenq9xS/Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118395; c=relaxed/simple;
	bh=3BOV1tl7TjNQrll9fHkxZzjrNPf/e4/8LiBH6nCvRmA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FHMRjxuTcPk9Tjdxa3a9jwHYOKQE1zgu0sJR02d2APgIQTrY3UaAtgz+biXUslq3PZ/9kaV2Vqnw4DopbS1s5vDy6mTrZlWJlBkapmDHTWqSpLfGEESrWXSlHQ3o/5DXoRSZYgjP3vZMqjaFAu6942sHPz/BBPbD6ad8Wi9IUlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c8j8d+hF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RC1hl/0J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8Wcx91485974
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:06:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=74+kg7lLrnTQ83su7R/2/8ws
	11VOins2fvjFVb1sOvY=; b=c8j8d+hFHkEXjXALcnJJzKt+rmCt93m3CmSQSxQb
	w32/BVK9ntevyz+g8RQ+ov9KixMjN3ZC0sOADjp6urGtPBrUYSidyYCL6F4QfFFW
	HDRGHoZqU0nt3octgmTd0WtRqNloGAPJrsAHb6Bzwa43fUsQoNXonkKxU3Mki0H0
	tiBM/0+hQ00tlnpB+Y3tLWq6yTu4xcvJ5Afuql6EWr/Sht3Sl0uZgEvZRZW30vMb
	KL7RxksVto7/TXueumK60DnQNiyg4i4Q2BCyyi7t4rB34TRiudTQAaxR2QUj1pGP
	q2/lQLbbNGWP0ASWExLiDg+RFdGmC4V01msRNnegCONIrg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9hswp4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:06:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed69f9ce96so88207801cf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118392; x=1763723192; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=74+kg7lLrnTQ83su7R/2/8ws11VOins2fvjFVb1sOvY=;
        b=RC1hl/0J/4Ml73CIMjS4I7+aWflwkA+PyDlqRb5bE+8fjqCtOwQYBY70ngGss6axGa
         UvdJutNBskUZyz3nlxHQn1l/VF3HoMkfEYlgOL7PO4gDVUy8u/hSzyzkXQXBVBdRJckQ
         K7RTTaXmvoaxdO8njxvbQ9KJO2dy3Ew0q1kEMj4er15jOON6XjPofUwynhO5KgwyOAcr
         YPkQ5MVJ8w5DgKFM1Ov/exedNxYktdujWQWm984sMx0Agev8M71E7WSTO2+zYZsxmLrn
         rKEf79qLmNMi+qwFAxb36+6bFzozdDt551AIkrkVN78s88LjQ2p8TFI9R6p11DnJ6lGq
         VtvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118392; x=1763723192;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=74+kg7lLrnTQ83su7R/2/8ws11VOins2fvjFVb1sOvY=;
        b=W3rO7ttD2KiidxxomBoKLw+pxEYmrhx3QfBs9RKVOzgw4rWEWyTtWdUw2HGHz2LRnh
         /5W6KjqbL5oPc0HjqNxeIyoC4tlornafyihqrY/JNqcrrbcjSXfjEN3EgMJ5QzfUNnL7
         YhapVYr4h/yJf8CpsBisv7w8fCB/ks5YMji4VFnpsT2Jj0JdpQtNIY4FhcVOs0L9R+oQ
         GLurBYNC/i1WmA9ichM2BJy3mdhDKWKjkjr6sKedWzDdgJmWvLwFbszTpj+F1bx2wYOZ
         p6qJKsWQF/rpIrALb2MFs9Mpi5cjMqf/X0vdGmAuWN5TrPRte8zm6N+KZsYdA8NHVTTx
         i+TQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnYD4ue/ZWc0Xpm3rtblc0w03wjFnl2mzsbSh4z7EKn+oi/bOaeraK8zN6T/k9bIPNlzSL1dXX6e0T@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0dmA3KyEEz8UvBnCSc0Gjmy3aKFJxtAAr5LXOuqfGbh0x0Nix
	hml3PHr9Dy8W1tOoU/uNK0bREQreniRV5dJ1j3Keczz5nwJ5YX3hae7Dvbur4of7rovOvJ7J77n
	N2GXhopOIAflSzl66YT1PUjOGC3IbJSONB5EkM8H8DftkNy5OJCiwfwXGg4wi8jqn
X-Gm-Gg: ASbGncsEmBkjXOqbP2h12xDw7nea8FNow7Db07nlZvGp+V82YEc/HY99jrmc6WJB6Fc
	7MjmlQ428hf+xmvuzP6UYC0E0P75Yfsla0vah8Ij2Fp83cdWCkmGzcj0BO9gJGz/vr3jizRQoK3
	3LaXXnrcCruGE2nL/goAXCwobqvFR81FucWh/2rB+iuUeuflRYV1v5DX2p8KrCjEXc/mAh4gFoU
	0Xy+KuXawDL/UN6w2vHQb+qNMGh9OkCU68Dlurq4DJehugMZO4mCfF1QN07LY6n1vChWvwyzJmA
	AMKMrj1nyVDcBkvJaQFBfdRBnWP02usdWmFiDtjIW50j7HxDOu6fPB4gOgtcmA00N0sg2dVDkUi
	Ng352Lbu91q+h/7fj89TSGmWysNolmP1QimKwefuL3bhKxLNAsXbyuTCDUrzUCkP+T51pZT5G0e
	YB2sKaAU6dV1X8
X-Received: by 2002:ac8:5d54:0:b0:4eb:a07a:5fce with SMTP id d75a77b69052e-4edf2044abamr35979151cf.17.1763118391706;
        Fri, 14 Nov 2025 03:06:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWCtoqJ9eEoz9VAi84ImZOu7pTERyYGjny9OzPT+PKrThzZ1sTEylt2zQF8ckW9BA1nAjdGA==
X-Received: by 2002:ac8:5d54:0:b0:4eb:a07a:5fce with SMTP id d75a77b69052e-4edf2044abamr35978531cf.17.1763118391115;
        Fri, 14 Nov 2025 03:06:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b33acsm993512e87.33.2025.11.14.03.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:06:30 -0800 (PST)
Date: Fri, 14 Nov 2025 13:06:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] interconnect: qcom: icc-rpmh: Get parent's regmap
 for nested NoCs
Message-ID: <puogcauf57v2auwmmqcdrwuy7oqb3lqwx6v7glldgh7pdez77t@a632c7akqe6w>
References: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
 <20251114-sm6350-icc-qos-v2-2-6af348cb9c69@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114-sm6350-icc-qos-v2-2-6af348cb9c69@fairphone.com>
X-Proofpoint-GUID: bVOia5PfLq8rwBI-kgR8tCQSolSXzyXe
X-Proofpoint-ORIG-GUID: bVOia5PfLq8rwBI-kgR8tCQSolSXzyXe
X-Authority-Analysis: v=2.4 cv=N+Qk1m9B c=1 sm=1 tr=0 ts=69170d38 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=a4FZeaqhxxCkONjFBGYA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4NyBTYWx0ZWRfXzSoSci59ktX9
 ttGaZfD1oneDT6zhgCbRzexstMAqU5eng3/ud8kijdc+rqy52IZNm0GFTkcbS3/1lyZ8qUPRYsS
 PYCpFh12ENpz6RaeMBJ8Zf6CK5LSF29kgb9HjEyqYMtyMiAdjx3lCLobMlLmkd3jZwuUUAunids
 P3TZ9hyXnPFoLfkkBj/0F6XTD8VOBwQcxcr2vP6C2VahvATmwLUpZw5j5So5TBb8qeZFx6Hb96x
 CNKRH31aXzuA8k3ID8d//QbYgNlfAItroGzDD4AhlDG9J/u3HVGrAbJP/xTjyK5MxEG2mbByu4E
 FC/3JEN1+D6uk2wHy55mmbQp72sNluohWISZAEDQwylpLVuq4frMkeSzNCfWeXvwJ/A7zJbs94+
 I4V4iaBi4NGPpUqRM1Mj+MaUxfZidw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140087

On Fri, Nov 14, 2025 at 10:31:10AM +0100, Luca Weiss wrote:
> Since commit 57eb14779dfd ("interconnect: qcom: icc-rpmh: Support child
> NoC device probe") the icc-rpmh driver supports initializing child NoCs,
> but those child NoCs also need to be able to get the parent's regmap in
> order to enable QoS.
> 
> Change the driver to support that and support programming QoS register.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/interconnect/qcom/icc-rpmh.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

