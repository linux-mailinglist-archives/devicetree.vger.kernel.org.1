Return-Path: <devicetree+bounces-271916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJRcEeyZqmkxUQEAu9opvQ
	(envelope-from <devicetree+bounces-271916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:10:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50D21DA4A
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 295D5300AD42
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 579E7273D8F;
	Fri,  6 Mar 2026 09:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i0Pn+ALU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YBwWaKOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7381FC7C5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788196; cv=none; b=k4iysqbZYHzrdKiAahDD9eGY9pTeLs4XwptoX2RaU8Yug7mcWWo7XbMW/D8HVW4QJyMCEXUVNckY5Cyz/Hu1PpDC+2aJ/Hn7L7MzP6BWzM8WuIZDj7uVcrKnjv5h2mnwHhiu4CMuw57LsnOmg8DsRFCVKhpdLFUPQR+k5Mts3M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788196; c=relaxed/simple;
	bh=pCa8b3toS7RG9BmdZ7X/9GmU2dLW5RF5ner7prNf3qQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jXCiurKM4YJo5/CDjkt5yqEY5RZWkB/PPMvZP0l5qP4LWjNwqGJITmIqwBny59upstfloRPWWS8029+Mw5XI6fSnZj06gzmMS7pQ4U3CYQ+RFCLnk/rPAnqS932CZxh3qkGTdmMSifmNqyp6qkgdzqwHlgPda0zo4PytKa87Rdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i0Pn+ALU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YBwWaKOD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6265V8HK3383015
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:09:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RZKZrAcFTOeJr1xaGBJRZ6iF
	90MID8G0fZfMTF88d9w=; b=i0Pn+ALU0zXGPl2eX91IZPn3/4cljK9IhpUk1MHx
	CIvhrrOodi9/lXQZ7+DsIvgoAXF9MQn/y2cBdX2bBpD8S9rcnATTEuXDlCkZvRh2
	ST4EvrcTtOmXF+sPSgeKhU4rQraXaO+7UXuY2XS0akDtUyVyWl6TVB4pWt40ntlK
	ldDIACuQv5eMEPKWuJ2AQHQY0Q96+9Jwg09ueBufR7KVM2JeWVv7Piyy5SJ6pPE/
	KBGGdcaaUN9rdFGSGTiSPaFn8VzLnVeVqz5kC9wnY19efBtODUQCFwxbuwJ6gO9x
	T87GNSFsWLVCzYokPDu5bZIiK5O3gNsFiNHth2A8Ki6Fsw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqruk8ptx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:09:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71655aa11so7282764685a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788193; x=1773392993; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RZKZrAcFTOeJr1xaGBJRZ6iF90MID8G0fZfMTF88d9w=;
        b=YBwWaKODO0ADBsFgZOYA5DXYSeuDS3ODPPVaKi1Z+Aup7Mx4ODfd8ayNYRDo11TLDW
         SvOmCyXYjiJWT+RFe0AUcGahRpbhgnv/uBaiD+eLCikbfMBfG1exUYd0TEyPaztENaXg
         t9+tcHjSw66CD2LLLvRTyNFT0kpTmZLSJkRUeQYspvqLJsgwJv8zq+HX4bL5BMcz+c90
         RjRrwQZbv36cXCgIBFg6MN2O45hLlQwJ7f3lh7VzRiA7DEHWe6ngWyQrPs4uZUaz4OoB
         i91YZjE3hrN3Be6hUHjtGYu/SP0FLvDP4/RCCHQIMdXaDOMPO7VsiQhFLFXCIDV5W3+j
         yshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788193; x=1773392993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RZKZrAcFTOeJr1xaGBJRZ6iF90MID8G0fZfMTF88d9w=;
        b=PdpfUPQcNo7LL/gyBr0lSa6WIVdXxVr/XaUOtfz34hWz3AkgkcM1LhwVzBY7bVyUtH
         OezCYiA5FpWtXVQxp/RnaqrF7FcNLtvoXOyMS7koeEtxmS0sLO671qsevEGWP73X5EAy
         rsBy85hNe1W0s5B8eSKgNbKBVW2gSoSgxgisDzARSntoHJ5Y5dJ4nsg78mn0oKw+5Gpi
         ke82B+JD5iY836gFNFF+9xEboANZ1MDIVjQYjxhkaBaYr64323/cCbXsoDvazNlgMMSJ
         H4Vreq34+dTBFerj1pVzTvTCc9wlbOKNwy0n3vCnoW2tHRPuOKrmxpTSfg0bsbWhontB
         Ho5Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0sbgK0o4kpt9gwxdGOdj+Kf0gn8KcmVfnRoA/RDJ+YkNotspiNbTOKBN2+7J0EBL2pvYSYkIx1++u@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy9X+IN7typYfmQ2aJmTspliuwo/jl0hikdjG8eTEr4/In6Xl8
	GSHqYWdL/pgpsjYRV8IPCZv7aeal3bdOCr7HJ4whh8f8vrm98gcL3cocpGpqWAzguSsgK+3/68d
	MaCc79AiOBlZAVkf8iRhyaYsoW2blAlOs+EOuZKowLU5+oUR/8VzYZTkuXKZZ4HuW
X-Gm-Gg: ATEYQzwfrx5TqIvklF5EsEfm13RHWt3blPFNPHFULUTAbOORt9+KIjgebt88/YNBL3G
	9QykwU1g5y8mmyDwkqkFwUKlvn/QwGwj1icpkQWFWB2P2FgI6os7Kgv7AGcXepJF7vyfj7MDRwV
	IMDwYFQ5fEW9fAG/RksdAO/I9jEMm88kQ4O17XhHl6aRrs2ZbDr1hAwIFuF6DP9sNXpzl/hxtge
	tcCyR6MkLjqf8W8q4UEnfx0ADce+wLMdozvFNF+D1/aj9FIQWtv5qxzw9cTRgfVFhXG/AsLB26k
	qFkGJFbCZiHsP38ld/BHbdz/kuYp/XJ1VMdzFuWJuvTzAZfXyp0s4/xrAxGR0ijLVGKjybUzxWi
	avCmTtkjxWlx5oN1MFq1o7Yg5KzQD
X-Received: by 2002:a05:620a:1a84:b0:8c7:17b3:ae1a with SMTP id af79cd13be357-8cd6d437897mr181706885a.45.1772788193248;
        Fri, 06 Mar 2026 01:09:53 -0800 (PST)
X-Received: by 2002:a05:620a:1a84:b0:8c7:17b3:ae1a with SMTP id af79cd13be357-8cd6d437897mr181704985a.45.1772788192837;
        Fri, 06 Mar 2026 01:09:52 -0800 (PST)
Received: from mai.linaro.org ([2a05:6e02:1041:c10:1265:158c:17d1:c76e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9fbsm2393780f8f.23.2026.03.06.01.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:09:52 -0800 (PST)
Date: Fri, 6 Mar 2026 10:09:50 +0100
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
Subject: Re: [PATCH v2 0/8] Add RemoteProc cooling support
Message-ID: <aaqZ3uO9wB3Dundi@mai.linaro.org>
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NiBTYWx0ZWRfXzI/NoGV+ADo0
 6hZhX1s/Iv1veL64QnRmkHboZLKZBgJhxQxzGPogOivrSnDjaQkhZeWWW4h3g/MLsXvXADDT2HU
 n5A9heGCwswsF6mwYbyGHsPi60r8qyvUqAGtmyygQGLKVuOfsIlsKKwnVqoJFNs0/B5ld1FpOQ4
 BVb8lt1g61SABEqNMkLjBArvihDPiyf4KQClmpGuy2iVdGjFpgH708eh4p3qFOYRLkdCyvFkJRf
 Jrwg3NVRhdYvaT2LRix2LGeT24UVJhaQFk1MDbXsKym/Puunncy5nBGlgYtPux+E57+VMx8vwSS
 iAS7OztkMnWi94ztgvhJeQeDJotap5abFYE7jyAi+hGjY96xdRaVG8csYcrSYI3G/T5vub3xI68
 RgkHxHezSivXbjCPVcrioT474q/JJOjSKCw98eehImzoW1dVrXWOoFhUA3yrm2oxfOXYlvtdgPD
 TAEiKNzMq8GHHeFjfdw==
X-Proofpoint-ORIG-GUID: 33uuHwHP37ctzeES3Qui0WOxXgJSTEGL
X-Authority-Analysis: v=2.4 cv=DvZbOW/+ c=1 sm=1 tr=0 ts=69aa99e1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=BEq6MHY0i-NMwquLpTMA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 33uuHwHP37ctzeES3Qui0WOxXgJSTEGL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 suspectscore=0 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060086
X-Rspamd-Queue-Id: 0B50D21DA4A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271916-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,mai.linaro.org:mid,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Hi Gaurav,

On Tue, Jan 27, 2026 at 09:27:14PM +0530, Gaurav Kohli wrote:
> This series introduces a generic remote proc cooling framework to control 
> thermal sensors located on remote subsystem like modem, dsp etc.
> Communications with these subsystems occurs through various channels, for example, 
> QMI interface for Qualcomm.

Can you clarify the semantic of the driver ? It is described as
controlling the thermal sensors, except I'm missing something my
understanding it controls the level of performance of a subsystem
where a thermal sensor is tied to.

> The Framework provides an abstraction layer between thermal subsytem and vendor
> specific remote subsystem. Vendor drivers are expected to implement callback 
> and registration mechanisms with cooling framework to control cooling
> devices.
>
> This patchset also revives earlier discussions of QMI based TMD cooling
> devices discussion posted on below series by Casey: 
> https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/
> 
> That series introduced Qualcomm QMI-based TMD cooling devices which used
> to mitigate thermal conditions across multiple remote subsystems. These 
> devices operate based on junction temperature sensors (TSENS) associated 
> with thermal zones for each subsystem and registering with remoteproc 
> cooling framework for cooling registration.
> ---
> Changes in v2:
> - Update Remoreproc thermal config to tristate and removed unnecessary NULL checks.
> - Fixed dt binding file format and added generic name support for cdsp.
> - Fixed memory leak and cleaned up qmi-cooling driver file.
> - Corrected DT formatting errors and commit descriptions for all targets.
> - Link to v1: https://lore.kernel.org/linux-devicetree/20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com/
> ---
> 
> Casey Connolly (2):
>   remoteproc: qcom: probe all child devices
>   thermal: qcom: add qmi-cooling driver
> 
> Gaurav Kohli (6):
>   thermal: Add Remote Proc cooling driver
>   dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
>   arm64: dts: qcom: lemans: Enable CDSP cooling
>   arm64: dts: qcom: talos: Enable CDSP cooling
>   arm64: dts: qcom: kodiak: Enable CDSP cooling
>   arm64: dts: qcom: monaco: Enable CDSP cooling
> 
>  .../bindings/remoteproc/qcom,pas-common.yaml  |   6 +
>  .../bindings/thermal/qcom,qmi-cooling.yaml    |  72 +++
>  MAINTAINERS                                   |   7 +
>  arch/arm64/boot/dts/qcom/kodiak.dtsi          |  37 ++
>  arch/arm64/boot/dts/qcom/lemans.dtsi          | 138 ++++-
>  arch/arm64/boot/dts/qcom/monaco.dtsi          |  93 ++++
>  arch/arm64/boot/dts/qcom/talos.dtsi           |  24 +
>  drivers/remoteproc/qcom_q6v5.c                |   4 +
>  drivers/remoteproc/qcom_q6v5_mss.c            |   8 -
>  drivers/soc/qcom/Kconfig                      |  13 +
>  drivers/soc/qcom/Makefile                     |   1 +
>  drivers/soc/qcom/qmi-cooling.c                | 510 ++++++++++++++++++
>  drivers/soc/qcom/qmi-cooling.h                | 429 +++++++++++++++
>  drivers/thermal/Kconfig                       |  10 +
>  drivers/thermal/Makefile                      |   2 +
>  drivers/thermal/remoteproc_cooling.c          | 143 +++++
>  include/linux/remoteproc_cooling.h            |  52 ++
>  17 files changed, 1529 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>  create mode 100644 drivers/soc/qcom/qmi-cooling.c
>  create mode 100644 drivers/soc/qcom/qmi-cooling.h
>  create mode 100644 drivers/thermal/remoteproc_cooling.c
>  create mode 100644 include/linux/remoteproc_cooling.h
> 
> -- 
> 2.34.1
> 

-- 

