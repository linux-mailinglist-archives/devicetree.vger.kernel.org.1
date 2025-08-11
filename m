Return-Path: <devicetree+bounces-203222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A9CB206BC
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66AD27A5095
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904772153D4;
	Mon, 11 Aug 2025 10:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xje/E3oF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143C61367
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754909754; cv=none; b=Fsd7z5gubfpNBQ8zFNJc9TvusuawNdETcMqQgk7eJrDNsCzVmUIi/tQrhjuY3jv14WS203eywuh5fcuZETRzVdxzjdXy4aBfLn/jdChbRMSvAFSemcUK+Pj3ppF0G4/uq/ON0gIkXpFIDLwroG5hEEadE940z4DJN6iC5bCK5Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754909754; c=relaxed/simple;
	bh=EDlgtCGTTiPDS26OgrMplbuhmJKWPHHmP5ixMDSjbRE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HnurtZ/4z+wJbgaK6DW9UAGyC92DlxkeRsAb2/TFPAFy0Uk5Mgv2g5BJ+r603JXTin1aaXvt7HiAiwcPjeEZPyR49flxGhc23B3dJR52e5dFyuFqkiVhl5LjFkKMG/aKbgGhS8uMfpmaSF/a7Cirn6pTlxKQiY9MINyVqGLcgEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xje/E3oF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BAGpv5024514
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:55:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mfNS104sZvUDxiTcLFxI/nq7
	cWMQCwJ3YOUX3c0FHSE=; b=Xje/E3oFVs9vdnrDl6g8LqFPDlxxovzpfF3DtGBI
	coW9ZStep+39hJVXf+ZTRRDPVQc+mn8X7kWnebVhd8CjTVDZBAHrZnaEfH98mnbK
	wf6jDOPJqt79qf+zlxmYfxknmSPDPUnGciPjJ9rZHD1J4sILU7HGeZgVLOms208b
	6g9ssb7x3/DwraUbRMrq51yP/6MCKz19321gq3BepgXsmJGfBbJftNpspMBejuDb
	v+cRInn+48Qntb/EFUa2WL99GbJkm1n2zYXWDbRWa58/2GHHXRJbTngb6erwxXDy
	Zq5WhoBYHpcZGSK8aNKcbOCHVSTfoQKBRfaao4YmpA17oQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem483fc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:55:52 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0b507d014so48510411cf.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:55:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754909751; x=1755514551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mfNS104sZvUDxiTcLFxI/nq7cWMQCwJ3YOUX3c0FHSE=;
        b=gAnh7PJH19p2dgI7po3PG8qzgvpnHj2w0IN5bpnnd+uLYwkYcjopCv8YBngrA1aE6v
         JmOcONYE+Mm4JJKD30/nE7mzTiVz9Ur8/xiLyL2Xdo5wikf5mI2Erkbmt7vcWknYcmPH
         CbtL/RlIzbPWJfUPj57QWXqf/zo1Fp/U+aolxhjME0iyDIPnHIoS1rdD0oC2aADsfLa2
         kcsMjrQw+cNalIVACuSa+njZRVUl6h9rFwGSjP24APN1b+OMvYF0zqDReSrRwTdK+EDp
         cklZ8T9joDXQt7HG4Z0gFjqXDNeObtHTWDyFGr6w3T8aaVAuyqOw3evxPWsu8oshLnxJ
         GCQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkG4X5bjI5LJ/6Wwc2ko5yJZq4uPta4i4rrbhWHAWj8pwZfaihY5N3nyQENr7dcIRnaixaiIc8103z@vger.kernel.org
X-Gm-Message-State: AOJu0YyJglKD6Cp84u9f3g4p+ZcN096JV63cpf1ctQy2en1OxACOR9AW
	dcBnC3sYckDgOWl9AXyeS+HbX+SJDHdAd4gWNZ7UWD98leMum/swFN3ZXR6Y2U6Dh8wi19FTuel
	lTSq3RZnHhY1PlXEJStvrwPR73EsiPbzDOZtjwmu5+/LDy1A0IK6uBwknRxQAtMNa
X-Gm-Gg: ASbGncuDsEZIB5XVldlwmG37+Dx/edoNEsW7niZ5Dp8r/RJmWwF8Hov6Sk2zqk0n6td
	NYnDhsE6IBuqDUNkhE/+DqxuPS+4UR+n0fj2g8WcSA7D8tt24mCSQnX9nuk9MYjXvFUSFrd6me3
	cIVgHGp5x7zIvPKeHB27cOCu1zErvPHf0471UI5iBKGRSoUQav99efGNhrqml5UoiP1Q4vp1x9+
	hGXlzxZ0weylptFsEkL6PtfnOlXiHRo2lHD5txEpu1BVyJPJG6JvmjfPzWCP1vHPIGKfcH5zv4q
	cSEvq5KWYetXGkiKTRQU4Zfqp0NN1UfEYjNZP/vN54x/dQJQ+yDmhIMa/B3fOh1pigl3n9qXh/0
	mYU11vtucDUtfZQir8GxskIlPUGIPeTAqDUgqpo/vLUxYVQHpJWp9
X-Received: by 2002:a05:6214:cc7:b0:707:63b8:3d46 with SMTP id 6a1803df08f44-7099a30512cmr137320326d6.30.1754909751165;
        Mon, 11 Aug 2025 03:55:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJGm+AQRrMZQkHwEUDLQJriTk9mSlKcg15YnclWYqXloRwI6zRHEDtZsJFogLVGniPGmspvg==
X-Received: by 2002:a05:6214:cc7:b0:707:63b8:3d46 with SMTP id 6a1803df08f44-7099a30512cmr137319866d6.30.1754909750630;
        Mon, 11 Aug 2025 03:55:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88ca334asm4229151e87.131.2025.08.11.03.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:55:49 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:55:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <y4yiyokoo7fclwlpyhct4o7mt6swustuciigqnte5pruust26q@ryvuwpd6h4qm>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
 <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
 <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
X-Proofpoint-GUID: 5kIy1kXhmxPZBtjKUQz2VzPplxcqRf1P
X-Proofpoint-ORIG-GUID: 5kIy1kXhmxPZBtjKUQz2VzPplxcqRf1P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfXzNpu3jYMVleT
 JJB+8+Fs0bGPf70x8Mo+8W0ScbF3/77bGlKD6KZj2cXHDjG/dOmRbeRROzkHmujfyJOBHgskW4u
 y/SDQx/KvzHlZSh5717p+VQ10AZCTMjRXrOhvX5U3pP3rhf89GwGKo3UB7udfc56YGXEJYB4lVJ
 /tRE3cSpJnxw8Brn6a4MyoIJKCfIGs4L7mf6hbWx8tARc8aJAGdumZvYf+CF4ZaQqd7axKmXWji
 RoTSrjooKTCXUXU4GaXf5F2i3v+NCPLzQU+Xhkt4+fXlhHEU3jgrksX36nXU6ueOhyn7+cEGS2d
 NAnovURZ32yLboJbV2IDyGItzgIic5wkX5HamDNGiXmWg0rOTjlaQ5vtrnvWZepCr4PJw+g3AgD
 MQiaRVlK
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=6899cc38 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mUy4j-dTXB4InB_98JkA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

On Mon, Aug 11, 2025 at 12:37:00PM +0200, Konrad Dybcio wrote:
> On 8/9/25 10:13 AM, Dmitry Baryshkov wrote:
> > On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
> >> From: Neil Armstrong <neil.armstrong@linaro.org>
> >>
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> >>
> >> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >> will be set in between of USB-Only, Combo and DisplayPort Only so
> >> this will leave enough time to the DRM DisplayPort controller to
> >> turn of the DisplayPort PHY.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> [konrad: renaming, rewording, bug fixes]
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
> >>  1 file changed, 113 insertions(+), 5 deletions(-)
> >>
> >> +
> >> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> >> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
> >> +		return 0;
> >> +	}
> > 
> > I can't say that I'm fully happy about it, nevertheless:
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> IIUC we'll be able to get rid of it after the dp rework?

Which one? The HPD? not really. My unhappiness is about the sync between
USB and DP. I'm unsure whether we need higher level of sync for
USB-or-DP PHYs.

-- 
With best wishes
Dmitry

