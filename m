Return-Path: <devicetree+bounces-197337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 969ABB08DB8
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDF2A7B245F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6165E1A2541;
	Thu, 17 Jul 2025 13:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dSxIg45F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC8A136351
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757251; cv=none; b=IHWiLlE0YawLd7vJ1vTxYVFFlPXvI6bXc2OeXXEPngOO5gbIwu8GtzQzvF5aaIi4WqPYTl03ncGyeZOJn05MjWUsZJOf53NI7rN8qam/Zo4rl57TZsUtAEv6BgH3JWzB8HH4tUxe9vxpUVoPsZLnRtCNUD+/YWqWiNZ9j1qE44M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757251; c=relaxed/simple;
	bh=0F1kHARcqcek/JZk1Kigy9uIt+1rYuJ4Elk2jvl60No=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BIfUkUoDW1c/AcigLPdYQ3/A0IjTevF+RVeufqzaJwKssAVeRaf523ADrNabAIXtob+KGVlRB7IydQyvtAf+HmNJVRqM7CWr3+CbcLDG0x6aAPI4tm5foCgaOH91wbrxPUPV2lqlZiGgrFTxVdV2pjzSBlrGGlDU9vU2xMgkQ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dSxIg45F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBuXO5003716
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:00:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SGYhux02JkDeCa7bIXWDqxESSxZrWDxZm9RthkuLWPs=; b=dSxIg45FvwQM5cyM
	axuHeEj0+95O3CP+FBMh82/SlkonuknNg2NiTC0R0VKT6iIxFyR2fswcBjEkIJLd
	YWrni3OiCLe0ROTyk9VUDRce5lYuf/bdiHQfGq2uWGvpSRVUj4l25soBsld/T/HP
	H4Mk2Fx/QV/OCXPI9ZKZ898ZmTYcjV+sh0vyMCb68e25xLbIIDnRRMkAn+hHBH/d
	vM31IEIfPdJDLkzAAoelrkgwQC7CrYYevlwBabL/hovkVZGaB7e3U2jU2R1SR20g
	YwLXfdZjL8pi2nhAGX+1DQBH8+rJ5irehQx6lo5laQq4EorZOcqHYYNOGFIG45lP
	JoSQkg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xsuksh4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:00:49 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2365ab89b52so9149925ad.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:00:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752757248; x=1753362048;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGYhux02JkDeCa7bIXWDqxESSxZrWDxZm9RthkuLWPs=;
        b=SHH4fK4MoEZ94iU64x2jxMFTbjUyL2GTDaRSxJI8dVJ5jFNd7Ilhsyx98ax3gz5tLD
         rOAxkpn7uEllAqQ2zJ/pmB/6aRw6YYN/7ZbwX3uQZEI/0ebLFxwK77eGATSdcQlsvGjE
         Z75oaoAXJ36xferFZwteiQ5rSV3TKYwaHMiK+ei5RBfOHuKVzrylgB32wqi2MCKi4gBd
         qiqKizhDUl81uEDz9DaOsgar2nFGwmVfqgPvQBK6uBT6wseiQBWcNq8lK5FgA+tbWO2W
         Reob7iTSsnu7AuhwjqAMD742DgqzBhd9x6obJ8R9mQcSxUCO1zk/njd+qJrktgg9LQ2g
         aYrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDLDyx+0TsIBrUAlYwFt/z0OghyuKi8HmGYRUwMGvIrQzZZkdXGPMh8u16ppP6X0WlonxjGOXr8i3P@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2V4NOV9kBasqTTa6Oje+lvcHM1IbvRyaWiGgYXoIWPyxzieuK
	+hYkHa3BK5N0F4zx5QqeTHg2jMb9e9cIDM7n+W3Rto7EqL/SvqeRoyiPKFS0uL/DoATKQtnSgX5
	/tzRA1PCFIYwM7XFAklMFIH4ndN9kLttX/NTwwE3fmB90pkxINAY7KDjgpy8C00br
X-Gm-Gg: ASbGnct1v3TzonilUrbEV0/7OOj0D4J/Ylt84VFzP5t7kbLGEdgDd5JxOtIHF0o9Hao
	4tmhtNGptnvSVW/1f5ph6bPVzS9z8PoQr72MGNl20eXXiVI8pVLgb9ED/JjdPyQNN3X5MCbetMq
	zgZUDX2KYk3c8k1mS7rKysMM8n/cCphqUX25OSLwLIhTG421b1w+o3Ck9XshniK6Kuc3AEwXOvo
	fLF70j1y0RvPxxyMiBdp4JB+Z2GJ+i7wPjk6YOivT0Vnq+HeJliNXF04esJSTdrY69XdrmIE+/F
	SHA2Zdjtw9tfC9jYEI6UsxuURC9bezuHa7/G
X-Received: by 2002:a17:902:ea0d:b0:235:ea0d:ae21 with SMTP id d9443c01a7336-23e24f52331mr113997215ad.35.1752757247682;
        Thu, 17 Jul 2025 06:00:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1kBVO2Ywe21J3crd9hiessDh7ZOs86Yr8mTkNt3GXBW5oVJGDQah7i85OKCnPnB58K1SJkg==
X-Received: by 2002:a17:902:ea0d:b0:235:ea0d:ae21 with SMTP id d9443c01a7336-23e24f52331mr113996235ad.35.1752757247142;
        Thu, 17 Jul 2025 06:00:47 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.63.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42847casm147179855ad.14.2025.07.17.06.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 06:00:46 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pratyush Anand <pratyush.anand@gmail.com>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20250710180731.2969879-1-robh@kernel.org>
References: <20250710180731.2969879-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: pci: Convert st,spear1340-pcie to DT
 schema
Message-Id: <175275724382.8776.542107390528988557.b4-ty@kernel.org>
Date: Thu, 17 Jul 2025 18:30:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: WVIVsgQ1ohao8AzNWzU90g2pl54UFdjt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExNCBTYWx0ZWRfXyjPfN7fa+/vD
 +p7hNYyldd3yhA2KJZ4OOlLMG3pka1kflFubzEdqUDNdDaEbxdXz7lOnSk5MhhJIH1WwlhV+8FZ
 HOdG8+8OFy9Bq70V1RL8xl0ewOOj7C6g0VrUZcUfB+0pKSlm5zSdKb5bBDAqtz1r6fblBIi9/Se
 Ddtng/B8ICydWQGVpiYUeIeToNQ0psqzhOd8jL5K6/C/oNNTT6XYBhLMXvdhhUlpO1A3k8Ef3V0
 gaJaI2wYevTf97cvW2Xdi6sC1i1Yk6Vxp9V/rYceNs6ErWdveUsQ1fQxRXuH6xLWhMunTgoC+I8
 n4JKQbb26s6ovb0lCVipQmDsoqxzey0QbPWbryTcyeEPOfCRCRHGAcDhKq0J/j3YxQhyKW0606i
 PpSPwaJD4AxBxlNVy+iC3ki6IH78vwr+l+jGuNNSmo8RKIKtvN+WyjQESc+NYi7HJOe4hRcv
X-Proofpoint-GUID: WVIVsgQ1ohao8AzNWzU90g2pl54UFdjt
X-Authority-Analysis: v=2.4 cv=JJk7s9Kb c=1 sm=1 tr=0 ts=6878f401 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=A4mJK6/VAfRUM2WLv3bxlg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=DHq1HpS8T7VkJ5FY4o4A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxlogscore=747 adultscore=0 clxscore=1011
 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170114


On Thu, 10 Jul 2025 13:07:30 -0500, Rob Herring (Arm) wrote:
> Convert the ST SPEAr1340 PCIe binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: pci: Convert st,spear1340-pcie to DT schema
      commit: f8766fdbefef2b0ac4c068c03ecba55a111051b0

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


