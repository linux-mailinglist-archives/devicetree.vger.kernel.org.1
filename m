Return-Path: <devicetree+bounces-237238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21970C4EB86
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 633F334C72B
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1812A35F8DA;
	Tue, 11 Nov 2025 15:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NAPnnkBW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U0juxqnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8592D3590C5
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762874101; cv=none; b=HRIiSvfrmibyI3+UGNgETDqYMswExLhixDTJ+1T5EneCtd314eidhmThhHFniLCDtcsHCt+wc9j42MR5gvQDmsxLO0i9epAIjEmUBHu1cz9CmhOLwHRiia9dGSt1t5xUVUSQnLRcO4tDqxzEfOaB5oJKOZRegJkfoFdTxQx6rF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762874101; c=relaxed/simple;
	bh=bU5zpPHPsVJu3Zi2/jYd6pKlJGiH3hqZ+v3AqPgSrdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=trIUY7R3FXIRW3e9rXU9Rq3XjuiNrGZe9FKs4cH5j0zZaA3hSJ96RGQXV2US+7wMY0zUubIRCULst9smxKz6QofOPk0c5aqfOJkQEaLG58Q3HdX37rFLduLyUNkx+kLaOe2U3ctKw8U/m0hCRJ/Z90CNQy5DkpLu1JkOAvXeTBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NAPnnkBW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U0juxqnB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABCgHZi2236327
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:14:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XyMhRazRo/qwa+YX4Uby/IyavwjBYRDEhF1Ft8RepQs=; b=NAPnnkBWq50DLqDh
	SwYOAx1NTr+g3xYlCXKnJNW6bYRdqp91/IdksQdsRspRhVHxJb077yDf3TmIgDdJ
	bpkbg4QuAURRbm69tKb8uUL3V+DF69o9cne5gdQuqrDlOoxBWgl30UfLq3PeHncF
	0RhEbvnPDiVQQNl1VP2dKMD2ePbxwFqqEMOXA/PzqBodlaepSZCriSh9PKt/7pl/
	THWOTPa+TeC18y+CaTvaGE5tiQMtks4s5cIOQkVtgSW3DSquXGJswOpC3i3u2y1x
	ENxNFM+23MArsj3IeaG2iK+gBuKo6jWzWeJTvY6JVftZPv/yWGDXBOx8cwAumnRN
	/7O9tA==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac11x18ts-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:14:58 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-93516c335c0so3139462241.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762874097; x=1763478897; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XyMhRazRo/qwa+YX4Uby/IyavwjBYRDEhF1Ft8RepQs=;
        b=U0juxqnBj0M1xxXsWbtph2nEsDu+IxIYHmNf7MP0yYdwDMN1GVfw4uS4B1D6KfG9m+
         JGK30+SWL9VxUZ0vKIEjOvf9d2lwBRvoU7OpO9LTLvmAacFUnK5/2dyh55GsxEVf9tqP
         1iBzpTu6ufh0L22FQGJAg/39VvpEWMmc0kDjQ3syVA0DyvA+Ru3Di1dosltNszVPV1SZ
         kiZAPKw4SfaFZcNjDb3g/9GXwG2ttjh0H0uf6ZVUClJqXERcEoFAtUjKacwxARNs2kqG
         ocLwoampPdwvz/pjMPk4Fd31Ki4+FO/QVS9EohxvXojMuh9zV5MKeZEavFyfjubQIWFh
         TBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762874097; x=1763478897;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XyMhRazRo/qwa+YX4Uby/IyavwjBYRDEhF1Ft8RepQs=;
        b=JSeTbqTOcJbxX3AEzcSGMWeUH9yUhC0wzJLM4IdfbbOxBRumXh239XzGgSHGwerQAF
         C0qK0xBem54jQTMmX1/hcnPi/ogaPFC1LR1pvn6wBmwU8uJrjYSd85GkkbW4l+gB1lB4
         QLPCy669DpBLDEI6fvvjTPe5PNu/apqH8a2WPajvRQIBwOPU5Kw8OmUfroG+TLs0oR8K
         D54eW8RVyR3KQyD69UShH9xvfVQ6aDHwhUE4pyvQGOPlF3K8P1o6HjTGH8Pw1XO9Ly2f
         Lrmw0JsgQmENOwRVDY/sCH42dzhO5oeeoMA1IRdVeB1p04ogX5gwoEfZRyPAwkECzAp9
         KT5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWfW7ujAYWaygyFBIXO8g8Ty3/zbVtTW2kQdoAU+BDczPUlfA+smDZQ1qXATP025IwEogXxw0FBFcOw@vger.kernel.org
X-Gm-Message-State: AOJu0YzuEn3DJ0GJPT7XtQV5erKaBLx9gyxcMEYflk7sF5ohLK1kG58P
	K88IY/FgK6vARzQ6XH+0/xwfOJ86M1ic/p/8H4rvvmqkXuhl9KpuQUR+1wvj4y33lRu6Pr2P9hX
	dmC9JFDuNBqhn5ioteUYfY7zDt4TCUJP52Rel/GShsFUdkCZsWaF/Yx0OX931NCAf
X-Gm-Gg: ASbGncttfeLlN1GkedSCK5fmZBib5tFLyIGihCo0BIRkKeXyl8UpNJblM4jHcrK/9PA
	z/3Q/mzj/iMf8emyBDCjR4ncp3l8fF8ZF4pZl7z0RUPelS1DKpH397LYd02hoTSK3k3QCUDt8gj
	3aOkK3hRDeb/1ONzFuErUhZp3/031/6b2k05iFpy0MuOOpPtyod49CMPcJvimFtfKSIIJap51ZX
	4Oehf186Sd4U9foaYnKdfs89gLma52pqIiirUcMVi4ylIOPjYXTc/QnQyz2lH+KOf89t84tg+YW
	96ZPDNXs1WhaWZSLyTb97C9ky+xw8IzY+Xmbd94k3sV33EhWY/eMTt5xJxtH5szm+yGBIMkJkeB
	U/Zj2EiABeyjVKui1nDhCpWw8oR72tnZ4DXUObtC53R9n3Gi0McDT2qBVNWEHZRdcGmdmfcMclD
	ObnN6L0LCIjzP9
X-Received: by 2002:a05:6102:945:b0:5d6:155c:33aa with SMTP id ada2fe7eead31-5ddc466ad31mr3702287137.16.1762874097460;
        Tue, 11 Nov 2025 07:14:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdJkveTEY1J/ukmmCrn3GGvD4NI1L7VolRvROA7q3wFctCerZvbwGp+UbnlPjyJfLWbnGFHg==
X-Received: by 2002:a05:6102:945:b0:5d6:155c:33aa with SMTP id ada2fe7eead31-5ddc466ad31mr3702274137.16.1762874096968;
        Tue, 11 Nov 2025 07:14:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a014348sm5114344e87.7.2025.11.11.07.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:14:56 -0800 (PST)
Date: Tue, 11 Nov 2025 17:14:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Amit Singh <quic_amitsi@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Use 'edp_hot'
 function for hpd gpio
Message-ID: <rqufdgme5cmtbvharugka2zc6c4g4am4j6enrkanc6uaxdbr77@dlptsjv7u7lr>
References: <20251031085739.440153-1-quic_amitsi@quicinc.com>
 <nzg7auudxocxnpnjsc2emot7sgh5azvucl72jqzgqsp4jhzint@hykb2xyx66uh>
 <c6ef0324-c932-4c80-8252-97dd3ee255d3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c6ef0324-c932-4c80-8252-97dd3ee255d3@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEyMyBTYWx0ZWRfX1bs8gJRCmsuR
 lAVS55um8sv5bphQm4WutkNGZqDhptMNCy+JwtJ5o3AHMmpBpqUcpxU5pYCKDLis7LMmzMMgEFI
 1FCuJk/S10sgo7Btw1EpmnoubLlnf9J6Knpt4ijz7wj23LrIMXusFyQkeapj3dOLsV4nBXKJodJ
 BawlDZjlUaRtpLETsUbEhf9XCDFbD+NnkcqbYcVmqU+iWRH4SbvVIPkoH8mu2DrwJECAJZBsIMq
 oHnDNaBBetV4Jj2drtyPYan5AdqjTXzfm913xqJQ3YQ55vsDuDbKCrOj0i9oSr7bFOSH2csIcLT
 SiXQrLX+dilg2WyitO+/XhcaLklnydjEEi/6eGmZ3UnC11DZS0wUwKE0XynhdfRb1Xo/yCALy7I
 TgKIVpO9PcBOX/WuTKyslHPWQdvUyQ==
X-Proofpoint-ORIG-GUID: iTtuNWcMtjj9HPzU6e_j0OlP1drCe1rY
X-Authority-Analysis: v=2.4 cv=L94QguT8 c=1 sm=1 tr=0 ts=691352f2 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Nr2CiOlU1OI7hOkqFEcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: iTtuNWcMtjj9HPzU6e_j0OlP1drCe1rY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110123

On Thu, Nov 06, 2025 at 03:01:07PM +0530, Amit Singh wrote:
> 
> 
> On 11/2/2025 12:29 AM, Bjorn Andersson wrote:
> > On Fri, Oct 31, 2025 at 02:27:39PM +0530, Amit Singh wrote:
> >> Currently, hpd gpio is configured as a general-purpose gpio, which does
> >> not support interrupt generation. This change removes the generic
> >> hpd-gpios property and assigns the edp_hot function to the pin,
> >> enabling proper irq support.
> >>
> > 
> > No, it replaces the use of display-connector for hotplug detect with the
> > DP-controller's internal HPD logic.
> > 
> > There might be good reasons to do so, but you need to describe them.
> > 
> > I'm guessing that there are still some issues in the DP driver's logic
> > for handling of external HPD? This should be addressed by fixing that
> > logic in the DP driver, to ensure that this (display-connector +
> > hpd-gpios) works, and then you should send this patch again explaining
> > why the internal HPD hardware does a better job.
> > 
> > Regards,
> > Bjorn
> 
> Thanks for the feedback and clarification.
> 
> We observed a specific use case where using the GPIO-based external HPD
> handling via display-connector leads to a functional issue.

You are describing driver behaviour. It is known that this part of the
DP driver is broken. There is nothing wrong with using HPD pin as a GPIO
in the DP connector.

> When the DisplayPort cable is already connected and the display is active,
> and we perform a system reboot, the display does not come up automatically
> after boot with the current configuration (using hpd-gpios).
> This happens because we do not receive a connect event post boot —
> the GPIO-based HPD path does not generate an interrupt in this scenario,
> as the line remains high and no edge event is triggered.
> 
> However, when we configure the pin with the edp_hot function and use the
> internal HPD logic of the DP controller, the controller correctly detects
> the HPD state after reboot. The internal HPD block generates the necessary
> interrupt, and the display comes up automatically without requiring a
> replug event.
> 
> This behavior aligns with other Qualcomm reference platforms where,
> if the controller’s internal HPD is available, it is preferred over
> the external GPIO path. Using the internal HPD provides more reliable
> detection and keeps the configuration consistent across platforms.
> So, this change ensures:
> 1. The display recovers correctly after reboot when the cable
> remains connected.
> 2. We leverage the controller’s native HPD interrupt capability for
> better reliability.
> 3. We maintain consistency with other DP-enabled Qualcomm boards that
> use internal HPD.

I think, this DT might have been purposedly written in order to show how
the HPD signals can be coming from the GPIO pin through the external
bridge. As such I'm really reluctant to ack this change.

> 4. edp_hot follows the Source device behavior upon HPD pulse
> Detection [VESA DP standard v1.4 section 5.1.4].
> 
> I’ll add these details to the commit message in the next revision.
> 
> Thanks,
> Amit

-- 
With best wishes
Dmitry

