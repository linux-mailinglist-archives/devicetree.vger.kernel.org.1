Return-Path: <devicetree+bounces-249264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 161A0CDA4F6
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1533730185C4
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B4632E72B;
	Tue, 23 Dec 2025 19:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PfpJMe5/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WhpuG2Nf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FF0264612
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766516926; cv=none; b=QJJMHNc+CSZ7LjyxzBaf1s64TzMz4WFZtGt3Pdx6a7uUgFMNsws/laFfRhCjmeYZ2QSnpNNIRW0yrbF9blPleoJka2EMMwqq/XS8jA8/r4Zp+uQc3+N3ZEfTLIUWa2ukgHhaldScqgnbm9r8jsdHqcno/0+XoFAhEizBn55aloI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766516926; c=relaxed/simple;
	bh=DLTcc4UnApmdJF/W1Hj2GExnopeZ5YRVc9FY544L5ts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VjqzgHe7XFxLhzSXBtsdMbUK3MB+8mqrlTMOnNM8X4Yff6/6Voge+aaf/rwAwIVg3hpz0dHSs5CoQD4/bPEVlMWoUzC1H67HWDEJ1DRLcw2nPHfqbtxc7LYRJDYPydE30OxpZQRK6uQ48k8KcvxnAvfx6Ki74p6w/8svrxDjkDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PfpJMe5/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WhpuG2Nf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNEN8ZR913441
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:08:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QO62dClkkSjUhSgsu+9Nxagr
	QOnviHb8v87abS5uRHc=; b=PfpJMe5/5vCU3xoqcGYJj+P/k0Wp9b/oTE9Dhoen
	yN/zwVwNQc8W2Wpcmxka9pgcNFXfn+qkM2dK/vYDmZJzRCIsVeBtYznozj3e52xp
	lg6312188i1QbFwD3WiSJKTz7IOWz9AGZuw+RNMpe/fxiipv8y1XMIHiOS+202Vs
	qgCn4ApkV806vlHPiOD7vAzPN2ZTXroZtiUy6W9i2GhSSr1a9p1FMGyCLvb5bMWI
	qyVQHG+SbCyfbaic4pyCWvHlaQ2HEq4X3Gfr2iqdjr2z81fCts0GVji3IEkVK82K
	6g34MRcT1AMrSppNdazEiV1shmnj2/CF5J/n7f4fD3x24Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7vt2gtmd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:08:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a47331c39so134756786d6.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766516922; x=1767121722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QO62dClkkSjUhSgsu+9NxagrQOnviHb8v87abS5uRHc=;
        b=WhpuG2Nf+05jDOeiHbwbm1XBWVpjn2Mlwm9/uP8NUGEVQ/EswE5lkHyTYHFDhSfRWQ
         s3T0EAd/nWx13pvbH8zIDiycARlXRowzzenhtc1UbtPf0WfjbemIK5oXjywkPlURmx/K
         9q1Hk85V4y1DPzDEvLzBB/t/C99KPCatSB0cs+vbbaqIkkOXLC2V5hzeBcKEElzdV2ta
         SBoH2enFeGlbJ+9gHodfU/x7yH7+jY9evEN0tZOrgCvzKlL6TMJPdwglKKlVWzvl0oME
         kKGmavjVZGMwnr1asfCGf7pdjPErcB63gFg3fEXCBX2tdSAHHx3TArcEGk4Xrm92RdXu
         k/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766516922; x=1767121722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QO62dClkkSjUhSgsu+9NxagrQOnviHb8v87abS5uRHc=;
        b=oyLm0pZcg/tkxiE2ojhJUK3+zlWsPZWm1gmy4LO5xfTdxDWy3AFDKfZ15dUGJ06hET
         8XYOeohzzfbYzaDC3X68++6pbFhyCMucCVA3hawomke1sbvs6jl48ZwKKXv7xKRnrJyB
         2JFxxIlWcL9nzBJrtGgiF91EESVByMd8c2nx0xITnubQLJDsa++J1JoPH+5Wg3TwGLBn
         QQ/FR9D8vZzTcdrGnsS90iAgrkmd3OpPB+PKDF0zEDnunUlHRM19pdlzk/xlqTeek/3E
         llEMj9ugahFZ70r5v/85qvqAXCHKB2U5yV3xilAiEKVNzWOGvKoSE7PSaPL6BZqTMqJZ
         Z0tw==
X-Forwarded-Encrypted: i=1; AJvYcCVz/z03deOGiXYB6NGGHXAebhhzhxRpuPAu+nBqP8JiJb7SGBLygD9mS+8DcxXXPH9Mxx7hSB7BQek9@vger.kernel.org
X-Gm-Message-State: AOJu0YzTSg82jplhiHT4I8VTIHgmQo1Cx/+0ZVSLcCqKs5VT/s69tInO
	qfO0P49Az8WAlST+NPumXNB+I/EFo1QMzIcfqm2ngJpXk/0jwwIbGrW8trB/alHMghdZVyW++Rp
	07RE3jV2wv4EjpBfvZ/sxFpFY8qIqRFPVmnTSjzoMqkz5RFlcBEXCUeXmXGNQbQ25
X-Gm-Gg: AY/fxX6J/ALeQgradsuaIDsGZ9cIkN/Yz8zFwPiF3sLJ5p6dt9CM+GBgjZIREvL3XAk
	S59NNfdPN48zit9hxYpCB/ikPH8RRGVWei5hBNllTo34IfPRtt19HnjTe0+Fugpo7MOCAIFQbiE
	52UIVnBCbNzi1YvBCR3FB+Z3MOPF21c0AgZ8/O8M9e+jPpvgJMrPHscBIzLyNPWKfzyiQejaR7S
	BDNUrwdfqK1xxCxt+H9rOnd4pE9U18q3babiiS+ecSsWxIeh4JQyzSmwonit+X/fbt2flqH5p0l
	+ouJy1CP5SRV552U+uQR/lgdEsQev3PGZisciAMG1vttIsf70Q+br/x7KfecP7o1ifM0UXXcixY
	JUSH77z/ktc9Ik9r5qupnmudA5i5+0irfCDUpVi90NJ25GYwv+xrInUJeA62BeSmHz5eiH58RL1
	AEE5ytqD9bDjSEtON5tCMziFs=
X-Received: by 2002:a05:6214:8092:b0:88a:2eed:486f with SMTP id 6a1803df08f44-88d8166a46amr214299126d6.9.1766516922355;
        Tue, 23 Dec 2025 11:08:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFCSdKwVH5wD13PdUqft6HXd3dcPPbF0TX+I1lL0wNpE7844fv4MmXsU6qhN91InL4Jgp/XA==
X-Received: by 2002:a05:6214:8092:b0:88a:2eed:486f with SMTP id 6a1803df08f44-88d8166a46amr214298706d6.9.1766516921767;
        Tue, 23 Dec 2025 11:08:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ea2d8sm4266990e87.45.2025.12.23.11.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:08:40 -0800 (PST)
Date: Tue, 23 Dec 2025 21:08:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <catfa6d7qofd6uwkz3vepidznxa54btpw5a47rokugjdg2ogs3@qqqmo5suq36v>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-4-yijie.yang@oss.qualcomm.com>
 <woqdn6gvlkgux6nuixpcwmcqkl7siqajgwrvd4x5cuuw3nlrpp@vmq63mgudnoa>
 <a8784c60-6551-4312-881c-c36523731862@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8784c60-6551-4312-881c-c36523731862@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE1OSBTYWx0ZWRfX45JJPQaFoWge
 wY+bzwmMKP/8lf6gOwX5qnjyPOPCig/qJOr5LdA1MyuY4sGD/3+UAyNcWDDc/VY2WnHkiB32YJ3
 btC5IbYXWUR1dFEtHxMnw6jcFLFrmYytjue/ceqTXXnoDCRFa0dvWlKQkpd9qy1g5tVijDCpQXA
 v0IHw5wpM7WwJG5PF9jSHqrZJgpdJyaY6g+49073uAWjAaIIvxwWKbwNxxTiZDjEBQa9nI2ppma
 pw10JDl/SF7Z9nfe4WQFnWSSkpeuZTD/VJAfonGl443pnz6OFsQxjRtnWT1lQ7mtdqEuznwMN+o
 1N9KudT4DnsCiQU6VGERb0YXQKIFPDpyHyWiH1eE9xOOB1f0b8ozDsPcZHp4zjm6+kGpn3TmPK8
 vIaTKwL3le9+UMwjtMsTOLZqzNWqJXTXLfRPhr+VlSlDI6Xg49yhNe5UchRMjlpwlueXAIZUk5B
 07xh04PtcwdTOVRM8ag==
X-Proofpoint-GUID: JALKeVYVzIvA2FQEV2sF6AWU2Vso1CoJ
X-Proofpoint-ORIG-GUID: JALKeVYVzIvA2FQEV2sF6AWU2Vso1CoJ
X-Authority-Analysis: v=2.4 cv=brtBxUai c=1 sm=1 tr=0 ts=694ae8ba cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=l_G8NALvrxP8-mubxe4A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230159

On Tue, Dec 23, 2025 at 10:02:54AM +0800, Yijie Yang wrote:
> 
> 
> On 12/22/2025 5:22 PM, Dmitry Baryshkov wrote:
> > On Mon, Dec 22, 2025 at 02:03:29PM +0800, YijieYang wrote:
> > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > the Purwa IoT SoM and a carrier board. Together, they form a complete
> > > embedded system capable of booting to UART.
> > > 
> > > PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> > > Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
> > > topology differs from that of HAMOA-IOT-EVK.
> > > 
> > > Make the following peripherals on the carrier board enabled:
> > > - UART
> > > - On-board regulators
> > > - Regulators on the SOM
> > > - PMIC GLINK
> > > - USB0 through USB6 and their PHYs
> > > - Embedded USB (EUSB) repeaters
> > > - USB Type-C mux
> > > - PCIe6a and its PHY
> > > - PCIe4 and its PHY
> > > - Reserved memory regions
> > > - Pinctrl
> > > - NVMe
> > > - ADSP, CDSP
> > > - WLAN, Bluetooth (M.2 interface)
> > > - USB DisplayPorts
> > > - Graphic
> > > - Audio
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile           |   1 +
> > >   arch/arm64/boot/dts/qcom/purwa-iot-evk.dts  | 100 ++++++++++++++++++++
> > >   arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi |  11 +++
> > >   3 files changed, 112 insertions(+)
> > >   create mode 100644 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
> > >   create mode 100644 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> > > 
> > 
> > > +
> > > +&gpu_zap_shader {
> > > +	firmware-name = "qcom/x1e80100/gen71500_zap.mbn";
> > 
> > This wasn't tested.
> 
> It should be qcom/x1p42100/gen71500_zap.mbn. This has been tested locally.

The DT that you've sent wasn't tested. Please send a fixed version.

> 
> > 
> > > +};
> > > -- 
> > > 2.34.1
> > > 
> > 
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

