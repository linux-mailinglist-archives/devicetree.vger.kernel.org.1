Return-Path: <devicetree+bounces-251949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE916CF8B26
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 15:11:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0FA4302571F
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 14:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B633C345CB5;
	Tue,  6 Jan 2026 13:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLMhynWK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SbH7eAGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2820A344047
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707555; cv=none; b=uPE6ecXir4wJtUrVAOCquhzF21xpF6nmDw5M/eRXfXSBNWQ3m1NU5Ed5TXBKBhClKrp/TWLv96K7WI1WUdRh3FeE2D8u69K41fa02JjAWMeLa4ERWoltk6Yb4YkHXJle2UzELGhQuzMM1zzmj85VSMXu7bhMFa21WdLVcbdwuNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707555; c=relaxed/simple;
	bh=0U8nvqz1Jdap6Z1viwsxxrvoCg1hGkeq0ztOlTbn7hg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=njnnZpBoncpUApbvmrwhF6xBv1tID5zJY0iOEShBuV2QFoAVu8R/UZfhRXt3ySEBG+vsq58sZG3v4ceXBDN7gfrIR7RkRw5Ucv/uYoTf1IU0WhMqCSq5u/UMNpzvKfN+tNNpyPazrT715jCZmhcz4UO6skmVnMvIXvo95eUFi0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLMhynWK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SbH7eAGv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AUGLE2429743
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 13:52:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	69L9hORNOToKC8dCqW8wEbOCuaXEakIhANIpeU+LfCc=; b=cLMhynWK/VzAGRvv
	cfs8HutXqhyakpONGOgG4IA8BIhVunT3nBggdFR2SqswkdXM188J/4rDZR6MGrjV
	S897nquRZCUD0EQuPApmKMArCeHZY0PQBraciQrB6bIin1pk77HErlHRcFoxFZeB
	HJ7ZgvbrvqWvQO5mzmkM1qpw9shvb0i947YTU4E2IcAmHyCnedRflKK6e3MGaH4V
	TeqSeiovjaytskI73vLcoDe1IBXT3xqeWS8lbbjACd7eOOefXJQMAiAIKM4HtpV+
	XsUgtFz/XFW24P2q5/4bRmd2EhlAgZHS+N7rhteKWeYy/4wppai13CHtPOd3+J5X
	sZ7dBw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr73a1jw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 13:52:33 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b99d6bd6cc9so2155103a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767707552; x=1768312352; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=69L9hORNOToKC8dCqW8wEbOCuaXEakIhANIpeU+LfCc=;
        b=SbH7eAGvcIc4DzuIsgFeF3a38u38ODaSz6aX5fYzLAvEDcAd/3CdsRlY3xkxiHi/BC
         nZYzBRWdTvpXPU5wVOLd0hlwjFOpg5CHDDKoOCc/9gC2Frr+ORQ/+TKQvfjd1Fu1BRYS
         3k7PPQtSSyEG4lMrKvPSDJOkAhE4SbpVT97BENV9iMwvib0syrh2IJLl8zo3sRAQ+G3s
         LjKrpTN0iDKh5nOJjUiZzKWOafG8dFYpzdiQv4o+DdIpz2Dg7/pIDAVRZt6I5oPeo9z6
         yk2mTu5+Efg2j1hCs6S8E6vPWBj4Ijp+AVIyJxB10zIUwtoRKmQwrKWbSHmzuQJPj6uZ
         s5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707552; x=1768312352;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=69L9hORNOToKC8dCqW8wEbOCuaXEakIhANIpeU+LfCc=;
        b=OM7V/o9dnFe18stqXCK9lG4UIp7Shrz+v4Jyf8Bv9XuDreT9l5xz1Fs2Xx6L1ZAVFb
         ZMI+BTpzHMzk70iuQd8F55yMmLg/WlXPgepjBtPIQpwmFYh/Ykm57WeTb2oZvlx7wVCI
         FE6cS5hJqCCHnAfjt9ZEkP/e/zNtk1mxL6zwFP7uSHiwgbCSY7XXLtwBkAVsuxCpUrJM
         yDti6z/bs5+14PZw7IrUOH1pmXzK8MF7BuxOP4o+vQRcCB6FGJinsx3kLoiWtFPtf0RK
         zTzccBkYDnZXhjj0p7H8y6GsKo9D1OowtYBMUhd09a73+3m+48v5+PX13ADUSk5RAR1l
         kghg==
X-Forwarded-Encrypted: i=1; AJvYcCUV9XezdGtubKZHpzt34NA5lVw7ERom5FX0yGQ95mJ5vNrh7ePjVn22sliLoDR0tZ+FXvlsgmL/2kr/@vger.kernel.org
X-Gm-Message-State: AOJu0YwWZZzDayx6rX3yquPQ3lAIQBd/dprdprfIl6EJp6sV+EVOi8J+
	Zc+3gG1bEIML4zT4n7os5r0S2sMIYPKB57vAUopdcXQ8HY6hmBtTMgrOBJZBQPqJrxQEoM6IK1K
	/JHLmt2kIQEqOGtEzMkeWouJL8drlp9fJsZaORo1RKV5v443ioFZh7uU9fRtauLPMH6lITo84
X-Gm-Gg: AY/fxX5nEeyN8uCbcokSwhx3S3BSfxcCP1SaV2lQYqOuk+OYNLwnM6NsOdeeqgdmbKE
	XShhE/+zIPwe61noimXHgiIPnOlbSCymCHUL0EBL77N0STcGW5gwkTNLWXJfR0tVeBDnneFH3B3
	PrBcRChz7sVEsUdh3aBI6v6FyC5i1G6+tJ916bvKA8N6pVs8qr/FtSg90ZglQ9LqTSKETuv78UY
	l8albGsRBosukTp/kVeSApyVde17ZVaZ4k5EjOM0hWu6RRF7SrNLZtnT5y/TER8YYkLYfTEMC9M
	PXEPN8n6dr9ADcAR8oz9jb2OKmKEIX0XdDZA9SMQ7GOI29dwxSqBxJnlWtNXGl2rKh2VctnbNKk
	IIOepPMoOI71ZPmKWykNKgwT5
X-Received: by 2002:a05:6a20:e290:b0:350:2251:59f with SMTP id adf61e73a8af0-3898237bc4emr2703888637.38.1767707552286;
        Tue, 06 Jan 2026 05:52:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAd9htxKz1Kby/a6BwohNG8XTxxujXxKPv86hzin3Gicw7jtMfe4ModJ+eBBaMP7enak0wqA==
X-Received: by 2002:a05:6a20:e290:b0:350:2251:59f with SMTP id adf61e73a8af0-3898237bc4emr2703844637.38.1767707551611;
        Tue, 06 Jan 2026 05:52:31 -0800 (PST)
Received: from work ([120.60.56.175])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c50347bc321sm263043a12.18.2026.01.06.05.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:52:31 -0800 (PST)
Date: Tue, 6 Jan 2026 19:22:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
Message-ID: <dbkrbec6t2agwk2swe7olz6zkhyphpbcl7dpmlwie4esvbbvro@s7ybpmaod3d5>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
 <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
 <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695d13a1 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=JR4DBjdY6jk8CmbmB73bTw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ur2dxFwE6iJ6aD69mVkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: xK2e1uvWovCTxreg52qcKK5PyH5LuI_8
X-Proofpoint-GUID: xK2e1uvWovCTxreg52qcKK5PyH5LuI_8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEyMSBTYWx0ZWRfX+hxUmI7P+94Q
 0oL9IbAziRDs9JbVHPj2rtjLNzVEQE0LH2tYcLIEpi0S8Zr0ULXb30JwRm25QzYuQcDTwgxHIWs
 PyWSoYCSlit/jMwz8P6952t85bcKvRbLvhKghMhKfJ8ViMG5oPYKjM2HiItt8h9H0Ecgl5RuFOx
 Aj5xgDcy5l654vRSLKdL7iWPAB82F1x5698oP/TNCv0iJ/jYNjsEuilJkrZrC5vbLidr/NXKvyX
 n5WK+uQVhOK4L2B0/i8AZlZJgdOo3p5vpDouIwh8XMDDQv3lk4lBOizmVVioWR8/896V3HFH+RT
 K0qvjA8lFF/KTPvf37pJyG3nRinLCSp5bzN1uoQM9inPXl57k7R4lUu659cTlmXpUqQGPiicInt
 RvRO3IEokyvzoOtJ5evxi6CEuGE0kMCPF3TitOE5TuFJvteyRXTVa+OJ1BiwzgXZg8FEvjDOxN6
 U8si4W8wIuooYuip9UA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060121

On Tue, Jan 06, 2026 at 06:30:05PM +0530, Pradeep Pragallapati wrote:
> 
> 
> On 1/6/2026 1:36 PM, Manivannan Sadhasivam wrote:
> > On Mon, Jan 05, 2026 at 08:16:42PM +0530, Pradeep P V K wrote:
> > > Add UFS host controller and PHY nodes for x1e80100 SoC.
> > > 
> > 
> > Minor nits below. With those fixed,
> > 
> > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > > Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
> > >   1 file changed, 120 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> > > index f7d71793bc77..33899fa06aa4 100644
> > > --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> > > @@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
> > >   				 <0>,
> > >   				 <0>,
> > >   				 <0>,
> > > -				 <0>,
> > > -				 <0>,
> > > -				 <0>;
> > > +				 <&ufs_mem_phy 0>,
> > > +				 <&ufs_mem_phy 1>,
> > > +				 <&ufs_mem_phy 2>;
> > >   			power-domains = <&rpmhpd RPMHPD_CX>;
> > >   			#clock-cells = <1>;
> > > @@ -3848,6 +3848,123 @@ pcie4_phy: phy@1c0e000 {
> > >   			status = "disabled";
> > >   		};
> > > +		ufs_mem_phy: phy@1d80000 {
> > > +			compatible = "qcom,x1e80100-qmp-ufs-phy",
> > > +				     "qcom,sm8550-qmp-ufs-phy";
> > > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > > +
> > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > > +				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
> > > +
> > > +			clock-names = "ref",
> > > +				      "ref_aux",
> > > +				      "qref";
> > > +			resets = <&ufs_mem_hc 0>;
> > > +			reset-names = "ufsphy";
> > > +
> > > +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
> > > +
> > > +			#clock-cells = <1>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ufs_mem_hc: ufs@1d84000 {
> > 
> > ufshc@
> ok, i will update in the next patchset.
> > 
> > > +			compatible = "qcom,x1e80100-ufshc",
> > > +				     "qcom,sm8550-ufshc",
> > > +				     "qcom,ufshc",
> > > +				     "jedec,ufs-2.0";
> > 
> > Drop jedec compatible as Qcom UFS controller cannot fallback to generic ufshc
> > driver.
> "jedec,ufs-2.0" was set to const in dt-bindings, dropping now will lead to
> dtbs_check failures. is it ok, if i continue with it ?

I was implying that you need to drop it from both binding and dts. It was
incorrect from the start anyway, so there is no ABI breakage. But make sure you
justify it in the description.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

