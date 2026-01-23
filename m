Return-Path: <devicetree+bounces-258834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGIgGgtAc2m0twAAu9opvQ
	(envelope-from <devicetree+bounces-258834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:31:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E0173624
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6F2BF30065C7
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0467364E93;
	Fri, 23 Jan 2026 09:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GUyuQBKB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DAE4SQP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBA2364041
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160711; cv=none; b=B7WxTOjuK8fdwl09q8JvOaPr3E2Odk5cun+OyCm8YBc0huwVli9kfadiRAdP0xALtu3V3jCXAQwXcZRNebAKgCZ6hotod8MiQe1y829VS4VllTXK637m5RRDXI0+nztzBPtL0gZRr8IjcTZOvRtQNxcD7G+JZYuRCIFFJL3/cQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160711; c=relaxed/simple;
	bh=LAdtpN1rCikqAOAR5EK+0Wp5HeQ/8qzoaZ/iaXhGfFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UKVAaJ9SENZwjtQKcgpNFfQBrj+cGt7lLHi/GEdn0PVxcZAEiq0pZtd0yik6x4iPLjbgdoonCpRqK/GisLwedpT3CR44FwMWIlb/HsRJmVknB0YNILY9p7uyeOXDoL521kYGOLksKo1jk5L1tOeaH1khjvXFtsRv0sjydlxIzBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GUyuQBKB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DAE4SQP0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6s0Go1330394
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:31:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	26CDK72HEOnmUsZ1CXy1/05/oLpi5raMr9WBDPBMZ7k=; b=GUyuQBKBtsywwiSU
	R1OwPXA81vidDquGqqc28No1zzt67cVhsgBYp2pCqS9pfqgkULNner+r+hB817tG
	EYcSBfrlnwB49/42tOhjioOI+F64teuAOEUVcNI10lgBcw3D2oAxFfdxtxgz7SfN
	uYKcMGab6GlKl9wD5NgmD58lb179KAkvVMcLRX1gTjkK9+3PNUVzcs7z/J3jaIZg
	sjxjwF3FLLRhGB/vjiCA0YFJzM3cXV4xxATTVthnybzHIySwKD0LPRdYuzNwnLVM
	V2nR/ELYU3+1GXzsarPhdbq++Q0Cy1lWqFZYsgEJEIBRTD5ihz5rPOaSoAVge8ge
	6qs6Qg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv44c8k6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:31:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a0ec2496so429706485a.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769160701; x=1769765501; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=26CDK72HEOnmUsZ1CXy1/05/oLpi5raMr9WBDPBMZ7k=;
        b=DAE4SQP0c7Zd5wIXa5TH5tWtIjBC7y2CfYqG+MtK4hiFcx5Yegr8lUFkX7uPrjBd0V
         s797iI2z8GPc9Zk9YRGIrdJmcd2mXbgTE4NGELsmHoSrz6HlZX3aEKtUyHrQtPISRlpN
         vXR3y315Li2rqm8tbEFgRyeRUbY2+UpDgcsp91GGs9KWukEsz/FS55Efs3xU+SGWJVbl
         xufzFh9sUQidwoiC5k4ZgPouy/tQE8FQa4t7doDDVb/zE79icbtWVx3zM9f6gI9H0kMB
         tya6E4D/3IiACWX4jegRk4fN94vpyHW7N7LgEeGsHTU9Arsvgn7T1f8PG9jBdzvvvvxl
         +1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769160701; x=1769765501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=26CDK72HEOnmUsZ1CXy1/05/oLpi5raMr9WBDPBMZ7k=;
        b=k+31lrfL+ag1NWw3yPqx1YFNgGrLKemsnp7KCRrxBp/E1AXuxi96vND6gufJU9/4vH
         3XmfwXbrb1vZyV79TYxLu6OtZq5fwLGzkxDRGS9bm3A7dLuXWwNAi5L5EJ0YqBIGpO52
         Wkkct+IO6K7CR4XI2K17N1NFpWFzDppT1xL6ICXio/WT8DJcwHZqOY6R5n44iYlw5J4w
         7A4W4XysfPou30vRdpFKPgpO4+YUYW4dqlpcd3qkjrZqqg1HRx+5VYd6ueL5z//4dQA3
         WriGWvCg+e5absz8crhhiYoZdtomTY6WsEBmxRiP57E/wK+jZatnubZO9/tRxexkGgiX
         JWGA==
X-Forwarded-Encrypted: i=1; AJvYcCWqALTPq8RkdVyCS4itaW4vASTsrztggRxQFGISW6HEPWAYcnkJdW4WalzUrGBqZ6PbSv3KmKARqvoO@vger.kernel.org
X-Gm-Message-State: AOJu0YzU/UToyolbch4hdmaq/q8uvFA+DecGkHJ6WjmElLmFSV6B8G7D
	ryWFDv8va4cGFon2kbmu5CNL/wRVZSaPn5v0RohgWuDwd1btRmNFXWlB3UDCKYDH9Kjv4lr4KKb
	rXTzp19QaK5BxGYJSlhmxocLMVLMvP1+EOnKMkn11g+6gBWNcTuLCpavdiSqtQ02T
X-Gm-Gg: AZuq6aKXl4mk7EzaNX/NxLEnhvlAiZQHtVrtYQZx2Xr8Sb+lzINb3cTKciu83Ei/AxQ
	9zR2BQOD1MQJy6a9r+FpDUUTQq2DptfgwWBf5KX6JqHwAQjLKCzROtG3AWEXHqtKMPaz0TwH0gv
	HsL7s/qdBWvngE8CqzQBubnNyeMnwpRjxS2F/zU3nwsXDf+W0KLexz9SJ2N6Ef0sZAxwB10llm6
	KPCTRMk8b68bKeIuRhwxqOZIW/pDd2XHorqmXl/JgUd5Lrst8IxLV57d1XnHBeHRHWlK+oCmxyN
	3ziECB8NYyK8ZyJf20nY6WE/olUz1hEYaw2RkR92PxN1SeUGgIKZHztcMbavQ0jc7KOM4WqR6NM
	rqyhHdnbAJaI7k4EaKKmDdBXfaYKHKqTcFS0xY7s=
X-Received: by 2002:a05:620a:2a01:b0:8c6:b001:c1d5 with SMTP id af79cd13be357-8c6e910a7dcmr53104785a.5.1769160701636;
        Fri, 23 Jan 2026 01:31:41 -0800 (PST)
X-Received: by 2002:a05:620a:2a01:b0:8c6:b001:c1d5 with SMTP id af79cd13be357-8c6e910a7dcmr53103085a.5.1769160701228;
        Fri, 23 Jan 2026 01:31:41 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:1c86:c19d:d843:dd83])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c30293sm5717115f8f.19.2026.01.23.01.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 01:31:40 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-ide@vger.kernel.org,
        Frank Li <Frank.Li@nxp.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: (subset) [PATCH v6 0/4] PCI: Add initial support for handling PCIe M.2 connectors in devicetree
Date: Fri, 23 Jan 2026 10:31:38 +0100
Message-ID: <176916069326.12678.16550242235025273411.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260122-pci-m2-v6-0-575da9f97239@oss.qualcomm.com>
References: <20260122-pci-m2-v6-0-575da9f97239@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TLdIilla c=1 sm=1 tr=0 ts=69733ffe cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JrKmLYXSX60uSqAbQrQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: DTK2J8yR6jk7KVNn5lMAMqvu9seW0gRy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA3NSBTYWx0ZWRfXwvBg5hc7Y36x
 6niTBpECQBkIO3vUYvteThE8RBgdKyP+uIpqGNjjBoyE1yglJqYNThzQ6V5xZOSGGuwK7KfJI+b
 OKc38ajUkVc+HYW0WDD7Bb1sAgQCOM9ZceRGe0KRr+rJcuLBsXpMFgDoT3Y8jh2Nzv0s35LnWJl
 CsvT9RdLjj5xAFgHepdTpEgl+5MTzzMYYc8h/SkCJj6N28LTr+of8zkAT+Gx+BUusndBDd4/1qR
 ERgUiUbJnXTSTt/UJCSQEmxuFTEvW6IEHfyNgV5HmFcbxH8bU0PCJvKYKRNvVPwRV6mMJTpsWyQ
 hb2Mf80fcEd24jSIc0bA/Ee+nRS8eydnL7E35CThRhH6YGyuQP+3e8IQDqPfFfkBbWwgss1qJkL
 uxQ1FYDyf2NOqhRnuCHpkBDfR81hPxIHKlG4iA5Cl1SDeHM26FpYclp8AyaurzTiODiL3jUUB3A
 S2rKEjRXOqIMb28RNTw==
X-Proofpoint-ORIG-GUID: DTK2J8yR6jk7KVNn5lMAMqvu9seW0gRy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_01,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230075
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258834-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D5E0173624
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 22:46:50 +0530, Manivannan Sadhasivam wrote:
> This series is an initial attempt to support the PCIe M.2 connectors in the
> kernel and devicetree binding. The PCIe M.2 connectors as defined in the PCI
> Express M.2 Specification are widely used in Notebooks/Tablet form factors (even
> in PCs). On the ACPI platforms, power to these connectors are mostly handled by
> the firmware/BIOS and the kernel never bothered to directly power manage them as
> like other PCIe connectors. But on the devicetree platforms, the kernel needs to
> power manage these connectors with the help of the devicetree description. But
> so far, there is no proper representation of the M.2 connectors in devicetree
> binding. This forced the developers to fake the M.2 connectors as PMU nodes [1]
> and fixed regulators in devicetree.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: connector: Add PCIe M.2 Mechanical Key M connector
      commit: 926194a6675a9cd5943f85820508648b74669fc6
[4/4] power: sequencing: Add the Power Sequencing driver for the PCIe M.2 connectors
      commit: 52e7b5bd62bab3851f25d8b70ad7eae9e94aba60

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

