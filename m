Return-Path: <devicetree+bounces-262486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONjINV2xgmn/YAMAu9opvQ
	(envelope-from <devicetree+bounces-262486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:39:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F64DE0ED5
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9D503038A76
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0B82C026F;
	Wed,  4 Feb 2026 02:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P9UtNjB3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZJeZt0Tj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EC12BE7C6
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770172731; cv=none; b=oFF3hPmtC791b73hQ8jSFvHt9rWo5Ep/337GEl1bekDmC107hfK2PV3PIJKiqLWitdbjfLPhODM+ZcOuUFhYJjzKMfAEf/chl2TFyathBFotWyPAo6HB3ViavbXLfsa0mo5TtDLj5gnq3byURMb24g9iT8hS4733v1y/EF9L5SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770172731; c=relaxed/simple;
	bh=6m+I07JHdg8bZ32TJSTZptmje2MxAmCE17/6jFys1No=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MAALB/TxntaZyMHWyscaP0j63w1DF/u4wrOOoc6OBR1Ubz93sQmD7owD8GaaBJAWFArinFuJ6WF54PMGGtV9GiXs6xt713LS0RkG92iKkow7TRcTGYr4C0lSCRA1yEeCvO0yI/IdIA0ip+URjQW3VDEKkwKg0L5/YJC5l53V6FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P9UtNjB3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZJeZt0Tj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613IloAx4122766
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:38:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	icxTIfXslHXDCQce6Ns9Sbp/11rZ5f6Ljfby9vO/W1I=; b=P9UtNjB3TfAh1ZlN
	8tK1efW1nudLgjpozE2NVkpKLmx8shtOWRdLihqVV4KtXwrnWLExmw++pxjGF+F/
	gUNAvZPPpP32tcnfJk5IiT4r+aTqbiWUjRkgOTjIbxqCVYHVRaILf9RPZ3APS524
	N8ojLjTjvsk29ZuvHAqj5JYfHIUsjd4Jf9i2neEFKs1sUB1YyY9PDeaUN+MxPHed
	Xh2tJc7NVcY2TUkxnHpQjbki7qswJeT8EPUnVmqBQ4ltbI8e/kzKS9FzJcRWhGEo
	Ls2NAp72QQHMB6znykBQtagvt1UycUIHgunlPVRiF9f/rFhX8mUmI/JEQMdgL878
	zREnkQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3kbkj7br-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:38:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c277fe676eso1919886285a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770172728; x=1770777528; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=icxTIfXslHXDCQce6Ns9Sbp/11rZ5f6Ljfby9vO/W1I=;
        b=ZJeZt0Tj6nQEJ4r2Yt1dm3nNQZ8WvYNmXlLay/H4HiNKMMe1q8LcJRSBvoNNoKT0YH
         WSwxYvbb0wBlS2defjbHqUlaS/nm8f2wxYNkfIxpRxFRvxXZTVhusVseYDQyuEiQY8sp
         qm5Q7POmlFrtnan8qQ4k8CMvJMc1gsEJUlqDCndnA2BbFqKcvOiWOBzodL7fcQYUU6jq
         2B4T0g+b4FLQAZsJJ8BUJ1mL069vKvHKhDUMsbQVJ3OvCGc8LEXZIRRVYHPw1y3mP6xm
         S5j8cScjVvfTGCvKIoNucy8rODVXjj6bsvfmymQrlAfyUa2h7oEc2gTag3KL3YCA9jIO
         CVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770172728; x=1770777528;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=icxTIfXslHXDCQce6Ns9Sbp/11rZ5f6Ljfby9vO/W1I=;
        b=FFR4oBV6sdrCgQPFFBOYCKVs/LTILib3LTpeX4f488U/hBSc+p/weEPFDvSI+TwSXW
         1T8w+No+hCfrwMRtd8e9yxXVGwI4I81d2FnB1u+H+hMhuGqy9h5pOOhuw/JzcyUlJG09
         f7RchI9L7D3SwiV0eUm79kVZ7uBnCX3jhLJ3D34jFwgi3jfXe5hsMKFQ3cOSO0Pj6kJh
         6wu7lfszesvkTR+wYuS6IWoUHfpLgqngKkcus7VkJO6Fw5wI6/rAeP6ksvzBNuJDcVST
         Bdr/l57Fmjs218YfmBdi2f4/yyOIUFvP0iMpQDBDFyH1bhszE0BnXzbiIjK8siSFkmVc
         RFGw==
X-Forwarded-Encrypted: i=1; AJvYcCVeVmd+qtrS3OJVeaWY+rrRCXlOoC/3/okA5J8fnLV1JsSmAAO1joeDnh9Ok757LptY5PoRIDXP/Q/E@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwhwh+4wvGmT0NqAlud2b4eIL1xdnGW/Mm1h9jfImGrKRTMGWk
	KYFq2sObyNBfQRsC17v13EdxrwwAbkf11hucHLpfea8vha64Yjb61x5JpBs0fB/SFbJxdANBiwg
	y5NVIlCdEhuo+sdBq/v/qbzkG8AtzfqV8i733x9qB+9NfEgVSZEyvVlvhxTcOJCMc
X-Gm-Gg: AZuq6aKK5xdJ9TGhG4wACXBEGUq7pIgLil9crQj/V8eqVx7baA/keNlnkXxsRYzVG68
	fugMFrZAZUBWW7xZf1MOtXo7ZcBKy3u61Xk437CEB0ObSuA9J9Ncjs2eB9bkNHq/iWzcUzMymV4
	5asnmGcqvBiCaxTu2lmQN3fh+tlh00mWKydfLzywUigWRjdVLDL10G0JrYReskUHuJaaYZMP+Ej
	I9PS1aaA5uTBBb/w6dzOeKRcrAO1vBVBF6ZraijrBCoPb9VrFahJDAQNsr7fqyYbqAgrNn2Fh38
	0t+eLpbsvTUBXamc9er2B+Gl/ui4blFO2gd23IhN62M4I1mKj9BMZdXoEUr8Dnfw/6q9qxmYokK
	aLDfDsBM5WEVD8WLVMdjb3XtoFs4jVmDHyDU2GCnNr/+7q4oERC9OD6kDi7ngDYD+W7VgzAxZKg
	2mTsdh3aE5yDGxIWCJ7usmQdA=
X-Received: by 2002:a05:620a:280a:b0:8c7:d2b:b5b0 with SMTP id af79cd13be357-8ca2f9c46fcmr197191485a.55.1770172727939;
        Tue, 03 Feb 2026 18:38:47 -0800 (PST)
X-Received: by 2002:a05:620a:280a:b0:8c7:d2b:b5b0 with SMTP id af79cd13be357-8ca2f9c46fcmr197189485a.55.1770172727381;
        Tue, 03 Feb 2026 18:38:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38692062919sm2154191fa.45.2026.02.03.18.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:38:45 -0800 (PST)
Date: Wed, 4 Feb 2026 04:38:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        andersson@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, conor+dt@kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/4] Initial patch set for PURWA-IOT-EVK
Message-ID: <d3mvqtyd6dsphkojenpalduty7x2n3yxf6rjazwndisxnktez7@iwb2nnxwvg4d>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <177014002716.3173249.7908353000261603377.robh@kernel.org>
 <e577c093-0851-48b8-abdb-0aee0479c1e3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e577c093-0851-48b8-abdb-0aee0479c1e3@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: QTDFxpZ5crUiJv2rL94B9Bx9CSjFzGBr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxNiBTYWx0ZWRfX/jhAATZxF6Fm
 cKi1rsKEAOFjsiS3OTmO1X0BtkpqO90Obri3wi8DuOR1I7YbFPZNvVZR5XzkJPDUozbuo9K3UDj
 F01l3q/cbCA7y8iTqy16Ueh+OCV/hfrTLhFNwOnewRUGoNnHSeFTV3Aeiix0u1Jue62mLBRMB1q
 4Af12XUzD8u6cKYZyfkV+0m0I3OzKu9iYeUXxqAeTVV8/lHvP12wTcom41RXl6Y8ddpesLgastk
 KRk4XB/Uw5bTV+2ZwYjTXR0wIIFqwGsDQhamsLLYl2g3rz77Lc0iRweiUnNXVkbBXodaNgCx0lX
 0SeE6SF/2aOYJdHz1lKeRhK8K2N3bkosSPd9YFNk0ha6b4ah5rLbLIfvrnZ/XdToQQVMN9jckQW
 WtA4xNaJWi9u5/8ohMefytudkjLYVo1Tcrj9YiftyZHOE2ciVxaQDPnN9bJhwc+9rgAN/cZTmtG
 NEhW8YbP5rZ2ffzcjSQ==
X-Authority-Analysis: v=2.4 cv=BKy+bVQG c=1 sm=1 tr=0 ts=6982b139 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=gEfo2CItAAAA:8 a=KYFTIwN-9b30Wf40I3AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: QTDFxpZ5crUiJv2rL94B9Bx9CSjFzGBr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262486-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim,1bd4000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3F64DE0ED5
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 09:42:04AM +0800, Yijie Yang wrote:
> 
> 
> On 2/4/2026 1:37 AM, Rob Herring wrote:
> > 
> > On Mon, 02 Feb 2026 15:35:44 +0800, YijieYang wrote:
> > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > Introduce the device tree, DT bindings, and driver updates required to enable
> > > the bring-up of the PURWA-IOT-EVK evaluation board. Focus is on two key
> > > hardware components:
> > > 
> > > PURWA-IOT-SOM — A compact System-on-Module integrating the SoC, GPIOs, and
> > > PMICs. Designed for modularity, it can pair with various carrier boards to
> > > support diverse use cases.
> > > 
> > > PURWA-IOT-EVK — A carrier board tailored for IoT scenarios, providing
> > > essential peripherals such as UART, on-board PMICs, and USB components.
> > > 
> > > Together, these components form a flexible and scalable platform. Initial
> > > functionality is achieved through proper device tree configuration and driver
> > > support.
> > > 
> > > The PURWA-IOT-EVK/SOM shares most of its hardware design with
> > > HAMOA-IOT-EVK/SOM, differing primarily in the BOM. Consequently, the DTS files
> > > are largely similar. Both platforms belong to Qualcomm’s IQ-X family. For more
> > > details on the IQ-X series, see:
> > > https://www.qualcomm.com/internet-of-things/products/iq-x-series
> > > 
> > > Hardware differences between HAMOA-IOT and PURWA-IOT:
> > > - Display — PURWA uses a different number of clocks and frequency compared to
> > >    HAMOA.
> > > - GPU — PURWA integrates a different GPU.
> > > - USB0 — PURWA uses a PS8833 retimer, while HAMOA employs an FSUSB42 as the
> > >    SBU switch.
> > > 
> > > Features added and enabled:
> > > - UART
> > > - On-board regulators
> > > - Regulators on the SOM
> > > - PMIC GLINK
> > > - USB0 through USB6 and their PHYs
> > > - Embedded USB (eUSB) repeaters
> > > - USB Type-C mux
> > > - PCIe3, PCIe4, PCIe5, PCIe6a
> > > - Reserved memory regions
> > > - Pinctrl
> > > - NVMe
> > > - ADSP, CDSP
> > > - WLAN, Bluetooth (M.2 interface)
> > > - USB DisplayPort and eDP
> > > - Graphics
> > > - Audio
> > > - TPM
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > > Changes in v2:
> > > - Update the GPU firmware path.
> > > - Update the description in the cover letter.
> > > - Reorder the patches.
> > > - Use separate DTS files for Purwa and Hamoa.
> > > - Update base commit.
> > > - Link to v1: https://lore.kernel.org/all/20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com/
> > > 
> > > Changes in v3:
> > > - Delete unused PMIC and thermal nodes.
> > > - Add WiFi node.
> > > - Add display backlight node.
> > > - Add connectors and VBUS regulators for USB3 and USB6.
> > > - Enable PCIe3 and PCIe5; add PCIe ports along with reset and wake-up GPIOs.
> > > - Link to v2: https://lore.kernel.org/r/20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com
> > > 
> > > Changes in v4:
> > > - Enable TPM.
> > > - Update the descriptions for video and the USB OF graph.
> > > - Link to v3: https://lore.kernel.org/all/20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com/
> > > 
> > > Changes in v5:
> > > - Reorder nodes in purwa-iot-evk.dts.
> > > - Update base commit.
> > > - The DT binding change that fixes the DT warning for pcie3_phy is located at: https://lore.kernel.org/linux-arm-msm/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u
> > > - Link to v4: https://lore.kernel.org/r/20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com
> > > 
> > > ---
> > > Yijie Yang (4):
> > >        dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
> > >        firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
> > >        arm64: dts: qcom: Add PURWA-IOT-SOM platform
> > >        arm64: dts: qcom: Add base PURWA-IOT-EVK board
> > > 
> > >   Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
> > >   arch/arm64/boot/dts/qcom/Makefile               |    1 +
> > >   arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      | 1549 +++++++++++++++++++++++
> > >   arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |  685 ++++++++++
> > >   drivers/firmware/qcom/qcom_scm.c                |    1 +
> > >   5 files changed, 2242 insertions(+)
> > > ---
> > > base-commit: 6267b2da1b2d04847a1a8f441e138bc4a89435ee
> > > change-id: 20251113-purwa-907ec75b4959
> > > 
> > > Best regards,
> > > --
> > > Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > 
> > > 
> > 
> > 
> > My bot found DTB warnings on the .dts/.dtsi files added or changed in
> > this series.
> > 
> > Some warnings may be existing warnings. Consider fixing existing
> > warnings before adding new features.
> > 
> > Perhaps the warnings are fixed by another series. If that is the case,
> > please set the base commit and any dependencies for the series using
> > "b4".
> > 
> > Ultimately, it is up to the platform maintainer whether these warnings
> > are acceptable or not.
> > 
> > If you already ran DT checks and didn't see these error(s), then
> > make sure dt-schema is up to date:
> > 
> >    pip3 install dtschema --upgrade
> > 
> > 
> > This patch series was applied (using b4) to base:
> >   Base: 6267b2da1b2d04847a1a8f441e138bc4a89435ee (use --merge-base to override)
> > 
> > If this is not the correct base, please add 'base-commit' tag
> > (or use b4 which does this automatically)
> > 
> > 
> > New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com:
> > 
> > arch/arm64/boot/dts/qcom/purwa-iot-evk.dtb: phy@1bd4000 (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a required property
> > 	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > 
> 
> I have already listed the fix in the cover letter:
> https://lore.kernel.org/linux-arm-msm/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u
> It is not recommended to list it as a dependency in the latest version.

You can use `b4 prep --edit-deps` to mark it as a dependency to be
picked up by the bot.

> 
> 
> > 
> > 
> > 
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

