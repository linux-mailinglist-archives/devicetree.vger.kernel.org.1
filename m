Return-Path: <devicetree+bounces-239254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6397AC63058
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7FB6C4EB7A2
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FECF324707;
	Mon, 17 Nov 2025 09:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CPBjihyM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A72E3uM+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B20B322C6D
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370054; cv=none; b=GkxWoNCGKtfGHjWFCh3yZhkVU8KUF17klk9/nLIbk68UFAZI4wGMDtaBJbNPz8+YochcTUKKuGPuUac47YoKIgbv3c5FK1vRADEcMH8MTVLp1ADihke1/SEyOtF3UybQgCq3eUtNnbYI60XxA3ZrlrbGLsY4gAnyiGWuDTZXoGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370054; c=relaxed/simple;
	bh=saUHbt+LeRKZS9cF/epchpBbcktopoA7yoKrx0O9bsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ehzDtFCQDYUbn6gul1fKOcgXTSIqq9TAcHxHDbLv+kghlwpFz0xNcD8iRUoSmMu5HaNXh4dA29bGLIZ/sb4mN0LjsU7wA56T5ZB5nrxGz+JFrpn9ymbB4KqHFE/L5940p2NzlmP9KsN9gOgUy6VpxsULS4WZUd8qI5t0PnF1Gwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CPBjihyM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A72E3uM+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4o6tU3189686
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:00:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CMa3FaiLndPXvuaXrzGyx7LakP9bFvznqBwHaYNcbYo=; b=CPBjihyMHTLRrjQj
	4XHfLEacuQ6JFr9+VGc+ghla7bsIHF6CYow/WPU8FRlxZlnQO2UmfTzhvNaV7nMn
	tDGsGr8GNsv3hOYWh42aGdAEgn3sWBrkGmXxvtaNdqRdz95eegbbXiVUKnQbmwG4
	S48llXoTy0zMk3WO/C/foDUaJ7d5OI/xHKOummpHT6x/C/Zr7HZKqt9FpP7IYfHv
	YNT7/X2KTu0N8XJ0jn+IrCe0JLZ7NDzWluP+Pyr8eQVqbmfzlQhwN52iLtj1PKcA
	zTAeWGWu/wKvuK4sArEOzHmndMLq2HCZF2kQlsoHNn/kcVe2yxwkcSGKZ7eWi4xS
	BepaxQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejkmc1a1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:00:51 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297dfae179bso105995085ad.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763370050; x=1763974850; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CMa3FaiLndPXvuaXrzGyx7LakP9bFvznqBwHaYNcbYo=;
        b=A72E3uM+Olq13NVUaiN4j9kACSpLGuYgfVecnB1CooX8bLUlOzhr/lJFzDOe676YbF
         ET7kLAvXGCEnooQeeaEBW6UYbafaly+YZQD4vt4o1HIu47/QKcvqoHyN3MY9SxoobODv
         GNrEAyUIpF3c/8wLo3e0VcAfyQ56FtHA3RRHJztYYE21G7AnYy7AlIGKP8JvkmZEaN+7
         EZc4hO0KOmrOVG4JiSmvpD7HRaXZpimlLb7bgRSwmitB406P+FdS7aA2tOFCBGEm4re3
         /iMnk/s6P/OkufbwoKZWc7ajGjNWer2vRRlaBTfvYvpt4W3fAlQyjhssuFufwW201so0
         +iNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763370050; x=1763974850;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMa3FaiLndPXvuaXrzGyx7LakP9bFvznqBwHaYNcbYo=;
        b=Aa0Q5YRIU4F+BBVKD1RWDl3coCPCA9FCpqQFmQaqJeI8F4s0iNAMiN11iMzvGzDq3n
         SPDockLh/2MloXXkxo6Fz7+lXNw5o8pErBGWA+nIrxRKu6AkdJaYOWKr0lpkdZsN2lIF
         kpdGsPJPr2R4lf4RM7tnVhzUqPJKmRf+xyrjt73tSYsboiTxX6ClS9C2sJmxjNmW3H4X
         rsc9DyqbRBB4EfzgJrniThP7Etotgr0qq0l9bRNU6zcCYP6sfEGoILifa8x50y/TSGMd
         BBqLr8AMmeQkKQb4FCtWwaYnSrm/S8Me9Q2lj0Wdsh4T0VABYVqRP/va5apGMxBTDKi6
         pReA==
X-Forwarded-Encrypted: i=1; AJvYcCWPna8QyN0v+MNCMsANG/eZVD/tOH0siYxBElAVl8+Urhs5oBaDHZCtCoT10qfhFluFsGXtpnCIMnUo@vger.kernel.org
X-Gm-Message-State: AOJu0YzTKqCl30Qu+aomJunx7ieUQ6upgbot4/YJRyThR1W9L8i5wAnK
	Rys66HxAnuu4FUxi8l8Fq4gSDuAbTuFags84vVK5Sfw0gWL1jOKSfCOmVh5GGYc4RfxX5ovw3Nq
	KH9wKo0CKqd0eeie4937X0o+a91ixznDyX4EU5iyW98GLfHwoIA/ccGtl+mChnjEj
X-Gm-Gg: ASbGncsGXWb4UiRfEnAzq30pLJjPE3FcVTBbYxV85ySop+cG0xf9iji9yKb4guM+9xv
	J4GOzFIJSl+Nb3IV4uMQpezRPhM1L1vAoIdEqBZqAZkIIfPndZ8pvk7nggCcEuS1iH6rzl7Q5O7
	i9LHLicA8hd69P09U9vK3n/xG+BBVetSoV/3SA3nTdJQeGdKwq4bcJoR9ha1ZDNsLX4Oyjxwc/E
	BHnzFoNUJyv+725MKTfz9AJmetaKybrzm242WWEEfO3NkfTDI3T9b8/tQkpfuIcSY9IA2RIUAwk
	k3b43juGGh4P7gtSAIoR6tjIqsElckOfc/WDONm6gydMzKnj1wtniLrbd0xjudmV1EeJvg3bm5j
	4m1rNKI8fhR2Y
X-Received: by 2002:a17:902:e1c5:b0:298:3545:81e2 with SMTP id d9443c01a7336-2986a6bfa2dmr88167935ad.22.1763370050050;
        Mon, 17 Nov 2025 01:00:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnrNdIz6rZtkHkqRUVqdF32sENFrtojZo1qL47E8dcBWurjeZGz/LHdZ+VRed2ABXDGYua7w==
X-Received: by 2002:a17:902:e1c5:b0:298:3545:81e2 with SMTP id d9443c01a7336-2986a6bfa2dmr88167425ad.22.1763370049309;
        Mon, 17 Nov 2025 01:00:49 -0800 (PST)
Received: from work ([120.60.57.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2beb34sm132716465ad.76.2025.11.17.01.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:00:48 -0800 (PST)
Date: Mon, 17 Nov 2025 14:30:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Baochen Qiang <baochen.qiang@oss.qualcomm.com>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 0/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
Message-ID: <jnggqxqv3rjzhyevovnnxzplfhl3t6auhhvmoz7wxmsf6awgdx@dusdgxwsxvts>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <2fd84ab2-2e3e-4d05-add5-17930a35fedf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2fd84ab2-2e3e-4d05-add5-17930a35fedf@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: m9qII_qvBDKJE3MBx6Yb5ocebzFZHVs-
X-Authority-Analysis: v=2.4 cv=N6ok1m9B c=1 sm=1 tr=0 ts=691ae443 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=SvArCPxluHhT4bP621h3eQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rZNuoRbQ_TWyfwDSFJ8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA3NSBTYWx0ZWRfXzrBN8RnpDyjw
 7UqmeYcUz0/oc9kM7jmKhSc0D+Su29LoMh8gS7Anvou23RO95P+3BHemuo+xfQtlkzqyHYG21yz
 wfXgQJQ6AvFqUCWNFUFvKPB61lv6Benme7XZ0guNwa7vcYOtdfCfU9WFcLG5NChH7ja3+vCEofR
 HWV84LHydqNFYF1k0hrhJyQf4C+WyQHfzfxD+dcq2V7/s07NfdKms7LnWBLnSyvgOMl5qBY4+1t
 dBN86rrP125OuQWbXVUfwzGm2W5LHqX8OB6YthRvQ/wwWDNCME3h2qc3RJ7l8AHsevgxosV/OD1
 5897VxLDqspqHMk+mdNtrqZsBhE9q/2ngobUGX5Nzdvs2LKRasTs/7cKtCva1pNkwTNJX6QVYBH
 68D4uPnUtrYCJ+YLDZQu4JTn8xLNZQ==
X-Proofpoint-GUID: m9qII_qvBDKJE3MBx6Yb5ocebzFZHVs-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170075

On Mon, Nov 17, 2025 at 10:36:39AM +0800, Baochen Qiang wrote:
> 
> 
> On 11/14/2025 6:22 PM, Manivannan Sadhasivam wrote:
> > Hi,
> > 
> > This series aims to deprecate the usage of "qcom,*calibration-variant"
> > devicetree property to select the calibration variant for the WLAN devices. This
> > is necessary for WLAN devices connected using PCI bus, as hardcoding the device
> > specific information in PCI devicetree node causes the node to be updated every
> > time when a new device variant is attached to the PCI slot. This approach is not
> > scalable and causes bad user experience.
> 
> I am not very clear about the problem here: is calibration variant device/module specific,
> or platform specific? If it is module specific, why the lookup is based on the machine
> 'model' property? While if it is platform specific, why do we need to update devicetree
> node whenever a new device is attached?
> 

I think I mixed the usecase of the 'firmware-name' property in the above
description.

But nevertheless, the calibration info platform specific, and hardcoding the DT
property fixes the location of the WLAN card with a specific slot. For instance,
if the board has a couple of M.2 slots, users should be free to plug the WLAN in
any slot, not just a single slot where the property was defined in DT.

Also, if the users plug-in the WLAN card of another vendor, not Qcom, this
property is irrelevant/wrong.

PCIe slots should be plug and play i.e., users should plug-in any M.2 card and
expect it to work.

However, as I learned from Jeff, calibration variant property is also going to
be required in cases like router boards where each slot is dedicated to a fixed
band and the calibration variant is going to be different for each band for the
platform. So unlike I thought, this DT property cannot be deprecated. But going
forward, I'd like it to be used only in these special usecases. Most of the
upstream DTS have a single calibration variant for the platform and for those
generic usecases, this static table should be used.

- Mani

> > 
> > So to avoid relying on the "qcom,*calibration-variant" property, this series
> > introduces a new static calibration variant table based lookup. The newly
> > introduced helper, ath_get_calib_variant() will parse the model name from
> > devicetree and use it to do the variant lookup during runtime. The
> > ath_calib_variant_table[] will hold all the model and calibration variant
> > entries for the supported devices.
> > 
> > Going forward, new entries will be added to this table to support calibration
> > variants.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> > ---
> > Manivannan Sadhasivam (2):
> >       wifi: ath: Use static calibration variant table for devicetree platforms
> >       dt-bindings: wireless: ath: Deprecate 'qcom,calibration-variant' property
> > 
> >  .../bindings/net/wireless/qcom,ath10k.yaml         |  1 +
> >  .../bindings/net/wireless/qcom,ath11k-pci.yaml     |  3 +-
> >  .../bindings/net/wireless/qcom,ath11k.yaml         |  1 +
> >  .../bindings/net/wireless/qcom,ath12k-wsi.yaml     |  6 +-
> >  .../bindings/net/wireless/qcom,ipq5332-wifi.yaml   |  2 +-
> >  drivers/net/wireless/ath/ath.h                     | 98 ++++++++++++++++++++++
> >  drivers/net/wireless/ath/ath10k/core.c             |  5 ++
> >  drivers/net/wireless/ath/ath11k/core.c             |  7 ++
> >  8 files changed, 115 insertions(+), 8 deletions(-)
> > ---
> > base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> > change-id: 20251114-ath-variant-tbl-22865456a527
> > 
> > Best regards,
> 

-- 
மணிவண்ணன் சதாசிவம்

