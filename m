Return-Path: <devicetree+bounces-209997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3268B39D26
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:23:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 726CD7B356D
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C03D30F550;
	Thu, 28 Aug 2025 12:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lEqh6r5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6F91E868
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756383813; cv=none; b=TbJ7aLECCHn1aMm1ymyt2zNG8nLvr2L1JrZF4IsBJxzKazEPqm1SsAu9c799kMaxNO0AnbWkgAtDVqVJ4FSwYAp1d4nHU771D8ZKJwOl7Bdo2H5Yj7EjPNQoLw/4ovJwdXYt5H7xi8GCHE83daef0vH+tBQpEPXg4oPbyX3/2F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756383813; c=relaxed/simple;
	bh=5rst5fLTWaEIat1RpzokmV/+HPWeZg8AWqo4Gx9BXE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rTO3DLb7fr1a2ru8o9RTzIwe0wxjI36v3aZojdUm9ut5j3v6FxGj5UEtDUGppCLDFhsFgxzElxt2SpnGGJnhCUV+eoM7Rfm+74eGECzSzeyW+rVC+pV0tviktebdFSyxggTO+MIrT+ivf8D8fNbGy2pebMsbT7Mv9kEHtrdwi0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lEqh6r5k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S95RjA004588
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:23:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EZu3KAVGHFsCh5fcuvT4HNuU
	yEv0CABTxKzQNvPe8HE=; b=lEqh6r5kDbGIOqdjj/UUeO1VQnWeHw6ZOHqUXe8S
	xdjs+71XDJ9AeneQUq0QqbEJKTLgms/37VK433Wo0+s213skyBBJ4PwSscu1dx1M
	C0FWdSIq/oftTYPJ/Zkz33+B/vWd2PCmxurYCE2IRVRq//CLL8Kem5AYPudQeLcp
	tMMdpogw5W2kzSb6UKOFNx291VMf2JLdVhFGgxO2wOgxToDbIwIyeb43cfw6Detg
	4F6Fic7QqlAEshq+5nGutOLD4AoH9aqH4OWKduT4c5B+EY3mI7FB6LTHF5bOU7CU
	ML3/8Gr+dxcQheO2M6W1+4+wZjoHkCr45bOeOPtJ2ltOWQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpghwe9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:23:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-248eec89618so3748775ad.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:23:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756383809; x=1756988609;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZu3KAVGHFsCh5fcuvT4HNuUyEv0CABTxKzQNvPe8HE=;
        b=pNmXQ/wGnsR6c4P1UnJM7vl7iJwE86/afrP3TQC2jwb9BfLuqNlEAz/hz22SZ3QIuY
         rGbyqZrYT0Z16QiO39+SuWiZHBTRdzpr4LMU67otpgtD6Z4vn5MavKtQ1N5iz0k37cNY
         NxZcUzDVcMJP8WDAEyHbZVnL5RITetBUGbhlS42lMbtwl/CF7LkoNLsiVi9PJEcyNLrF
         BaUP3gWEOkZzTkyabVen9JKROLyhVyP/4hoRy4dzGHwIVoAMYQIEFlFp5ykNz6PBVEmA
         UkyWi+FECptf/KQ0bVRXgMghU1t0OtPaRIAyZOLDg4cjII3Yrh6KuT2HpKHG3fncKHJ7
         7XOA==
X-Forwarded-Encrypted: i=1; AJvYcCVF/kqU1M2yMjS0Ji+EBjFvSnpzvn90Ri9P9O1oxeGTdUv4mqCaZbS3bnhi4r7waUhOBpLwVkz4WCGz@vger.kernel.org
X-Gm-Message-State: AOJu0YzO9TCEaAodZ51DXUFWOB+njyiKMfEvmlXQW+T7CzKjVC2mPWpT
	7Zdbd4JlghCwrJakICrUYfxL7rl513V165aYLW9gjT5Vtlwp4rjkI78CLu99xe2tlgRLIr9i116
	p60zhVMKhmiSql+SRSPFFh514yzzOAFjKkyZ9PzaXo2xE0nNQLkNo4Lmg7puyIDeh
X-Gm-Gg: ASbGnctuvjLCCajefWAmt65w18AbIXQcz2+Z4CtYG2lPMLGCdCIjsRfkKLNpp8GRe4/
	3sEKifiXz+T8YNJ8zy/Fy2yhJnmIaLtKNfvjwGaaA6tGYeS5JrSIevsAerPbgfWjIHrjgl8T5gv
	iJ4WNJ9+oBF3l32CTQe3LgWpU4NW4VwNfSgJeNxyAT8CWzYfDzDnR0xLF84kvIiaAhpyPvBahJK
	1mIgjN8/7tFmUP9uK7hASMntmSjCenLCXl94/eGbM16zrbfrzHVS47NGtx4VVBs2GNPZFeQYhKG
	0mY4nQhXJX7k7MWqo4592uI5Hb7hJp07c5NZIzlnxqRjI3Hm9qQii94JVkLwQE0swb++
X-Received: by 2002:a17:902:ef0f:b0:244:214f:13b7 with SMTP id d9443c01a7336-2462efb04c7mr311698055ad.53.1756383808739;
        Thu, 28 Aug 2025 05:23:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlXTQuslcdRCvIsbREyFEnJ6/4MjqDDqTAmmAr9yqeBhBNxc3DV53rEdm/A47zsJg9ygUrMg==
X-Received: by 2002:a17:902:ef0f:b0:244:214f:13b7 with SMTP id d9443c01a7336-2462efb04c7mr311697655ad.53.1756383808215;
        Thu, 28 Aug 2025 05:23:28 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466885ed72sm149774835ad.92.2025.08.28.05.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:23:27 -0700 (PDT)
Date: Thu, 28 Aug 2025 17:53:20 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Vishal Kumar Pal <quic_vispal@quicinc.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: lemans-evk: Extend peripheral and
 subsystem support
Message-ID: <aLBKOH2nSkiNppwQ@hu-wasimn-hyd.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-3-08016e0d3ce5@oss.qualcomm.com>
 <uvdrqzpqc5vki6sh5f7phktuk47egtmfuw3jjvoakrbyhqxwvt@obao75mbrtti>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uvdrqzpqc5vki6sh5f7phktuk47egtmfuw3jjvoakrbyhqxwvt@obao75mbrtti>
X-Proofpoint-GUID: 9-6qUMyiZGxsmHXASRaBsoSnaHvtfVGi
X-Proofpoint-ORIG-GUID: 9-6qUMyiZGxsmHXASRaBsoSnaHvtfVGi
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b04a42 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=cJrhKfuPXHnoPuS3F2EA:9 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX/bxePi2bwqNn
 8KLd8SQbz8naToT0P3c2OD8zeKtDd9wlgggJixQ86ElqCcie4R3KHaWNrZmr7rIGQus+yiGJZIW
 3ULogfGOViTgojf4xTw/URLk8P4cH2h/ap5LRKbLLUOc4jcuRYnZXmf7xLvWOgyyd7T/Q1nJETS
 zPdfP5CeGaAKhqA8SM8ckBSILBcx8zIDCtgCjmXk5Kg+maumQFqO9Kzf1vRQv/NM3IX0bGnRl/c
 guvy++DuXfomeSZiqsM8YBf/bBU5+Kgh9RnkxtMoxSDqFOHhnK3BKYS96hKyv6Z2EPOSSyDHcZL
 +Bn6HaMvJfOa8odlh/kB22vhEcFlxvR6RmNYkXlIZEreB0490/SnSnMbvrYsJaPNza6kwvEFbCz
 bbBrcM8F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199

On Wed, Aug 27, 2025 at 06:06:04PM -0500, Bjorn Andersson wrote:
> On Tue, Aug 26, 2025 at 11:51:02PM +0530, Wasim Nazir wrote:
> > Enhance the Qualcomm Lemans EVK board file to support essential
> > peripherals and improve overall hardware capabilities, as
> > outlined below:
> >   - Enable GPI (Generic Peripheral Interface) DMA-0/1/2 and QUPv3-0/2
> >     controllers to facilitate DMA and peripheral communication.
> >   - Add support for PCIe-0/1, including required regulators and PHYs,
> >     to enable high-speed external device connectivity.
> >   - Integrate the TCA9534 I/O expander via I2C to provide 8 additional
> >     GPIO lines for extended I/O functionality.
> >   - Enable the USB0 controller in device mode to support USB peripheral
> >     operations.
> >   - Activate remoteproc subsystems for supported DSPs such as Audio DSP,
> >     Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
> >     firmware.
> >   - Configure nvmem-layout on the I2C EEPROM to store data for Ethernet
> >     and other consumers.
> >   - Enable the QCA8081 2.5G Ethernet PHY on port-0 and expose the
> >     Ethernet MAC address via nvmem for network configuration.
> >     It depends on CONFIG_QCA808X_PHY to use QCA8081 PHY.
> >   - Add support for the Iris video decoder, including the required
> >     firmware, to enable video decoding capabilities.
> >   - Enable SD-card slot on SDHC.
> 
> I know I asked for you to lump things together in the initial
> contribution to provide as much features as possible in that initial
> patch, but now that is in place and this patch really is a bunch of
> independent logical changes and this commit message reads much more like
> a cover letter...
> 
> > 
> > Co-developed-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > Co-developed-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > Co-developed-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > Co-developed-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
> > Signed-off-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
> > Co-developed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> > Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> > Co-developed-by: Vishal Kumar Pal <quic_vispal@quicinc.com>
> > Signed-off-by: Vishal Kumar Pal <quic_vispal@quicinc.com>
> > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> 
> And I don't think you all wrote this patch, you probably all wrote
> individual pieces and then one of you created the actual patch?
> 
> The important part is that we don't want 9 different patch series
> floating around with unmet dependencies and relying on me to try to
> stitch them together.
> 
> But if you could do what you did for patch 2, 4, and 5 for logical
> chunks of this change, that would be excellent (i.e. you collect the
> individual patches, you add your signed-off-by, and you send them all
> together).

Sure Bjorn, I will split it in next version of the same series.


-- 
Regards,
Wasim

