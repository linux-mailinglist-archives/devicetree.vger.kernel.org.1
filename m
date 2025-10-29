Return-Path: <devicetree+bounces-232675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B1BC1A07B
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F3931358055
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86DEC33A01E;
	Wed, 29 Oct 2025 11:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQPSGRmG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MuoogLxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7639339704
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737428; cv=none; b=F+1ZAAtLvsygXQ8kkZ7K0vde4Meu7Bt5dA3TMvhuxtJrlrV6y4CMNX/1wDQ0y+Sql7W1Z75CGxJZUA3Y/0BrPHOYYXZsl7hsik/ruIKIe1FULcHzaZO11UMF4c6ddah9VgEQnkbMEQVeoWhJNTP0u9PWro5svIjTtiyY6fTErW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737428; c=relaxed/simple;
	bh=kRgViZa4KGaZCel0lL7UaLwBZ4oTyRhW1O/XbfTvd4Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=itHXtpGyO7RXxDFHHUOVirCcBy44YnTnPEQhsi5bjBJv04mq3WlvYgoHe0ESnEzU6nZVaZNT/G6pesjswfmGhl4oUOCMyPHY8T9+1dUIHG5QuFSmxA4cftxUvCE0cTADNcVDSsXNqTl5ckom2jGrRdMr9x8T+awExvN8Ky0SUkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQPSGRmG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MuoogLxP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uoCj3720135
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E7sek4J5JcaJw3gQMQZq1+elUkhg/cQB5aGi2C7MD0c=; b=DQPSGRmG3c/8SrOx
	hqpZ7nzbpvZcXxVBCYDkX3lp0iIynf0YJ9jSm2popx9x/W2tIqNQLHpxNPNNy1kK
	nNXc5052y/Gu8yuHi10pM8X6E7LZhTPwyQ+5VFwbLI0CBrrONyfNX81getHpm7US
	VuK/wBbeS8pTk5KLwwETTR9ehtp00ad9dWIFLbZbeTmHszY+SqikC8Nvo+Nwkf2q
	JemCs8bbbRv78vexmxtUagVKMYfiE43bA+dCmEkp17+xxHQTHANjVt/LoX0BP/+y
	lx1+JviLcikFwqN7TLY1RRjjgbFsU7+0wyyVtgyNNovzwP2pLev0RwWjO0hWVXTb
	R3LRRg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a22c94-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:25 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290da17197eso113385775ad.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761737425; x=1762342225; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E7sek4J5JcaJw3gQMQZq1+elUkhg/cQB5aGi2C7MD0c=;
        b=MuoogLxP0jwPgrfgZbS1rM3AJmHkpztO8NNqkVpi8sbKeDrce3y1XuBSOnoX9GoycK
         tWOtQcfsIS4og4CCzVwQHonQoyY1XntOrGtJ/qW7RLQic9Ieb6OHleW1ktqql121djAo
         xOQZEXtKXVetOHmeqhv1DJlK5HxWahwcnXyevsmc/DUiKQK1qo3KVOY6BiPi5Quf3cHy
         rchl5inVBS3mttB7/paW1xXTBpYJIAzb4KY1Zdj+YCOLzaX69Ta/7e9D/JM+ZNgDAwUO
         YuLFqPUNp9I2SadKspKO2siSgv1FB2YTErmEov1DfbDqhhu1x+TCRfnwoPAeuExwoPKk
         k9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761737425; x=1762342225;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7sek4J5JcaJw3gQMQZq1+elUkhg/cQB5aGi2C7MD0c=;
        b=eDSln/uS0y4dyF/4hf/JOd4c+q8qyCYNjkzQthTrDCC0h0D0QzgxMfdhvUhpoc2Qn7
         n+r4lOdZD/F/TfemoiGzgY/rg/2pANnfXhRYpeuMXj0K+be2rWc0l5UP5Q87OPJ30nyN
         hs2kC+Qb+DhMJPVnPskYfRTU25yiYxrdf4d54FXmstp0Pyxbb7e2BG2AhfT7QRgT9cbt
         fKNErCaZk4Y6cjrVGjroI3tHha00D07yNYM44sTHeog/IJ6mvjs6eS/ccYPi0waJzQN2
         QwSCx6EElvOVqMv1jQc/MjUtO0SGKqPjFVsHP4Tf2QGuscV9joR0mInzXVqc/cXXz9Vj
         7ArQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHNexd8UQIWxB83e9mrEO5Si8G3w1iJs+IxqyFdos4ZU8z5pec9OsCdyzHWwgrlPNkKeQ6+3xSkB3P@vger.kernel.org
X-Gm-Message-State: AOJu0YwEFljR9MYPN/qNPk48U2YJf4n19hBAXB6DB1AD7uGutt8ELag3
	VRN/cQVqDy04gxmuV/0CC2CxS9vikP+5rQFGwwKHN0d+8lWwCXZUSOwy3NsqVKWQVwKQ5UHiCO8
	pOgpUaM03Mj7g+KkCmFl8ObkDN288IQiYiHou7gGxOreNyIWSHVufge9b1hlU6W0P
X-Gm-Gg: ASbGncshHveh5UZsF3W9K8eUnfyMCPStOfatv5gZOFeQLH9kTQh9tpo95gJVTShGNTc
	thtU6ZGQvKzQ00/MHzoMsmnh/vc0OdhodxCwfLP+7li4QNa6ebCkVXp1PWdmFBUM+9mUJWynETI
	AsEhaEPeIo2LkLEJ/MRHWC7ULEXeJIx5hMoMERdv6y7k7ehEshLVcqKyjQEH7NLiLmcHkQdoPUO
	REi/9QqtWwTM6y11TgB35HSoF5h8tBqf0ulCrxTlfRYS8I8i1gjHNuyOq0TmhHMT4RTU4Jg9wka
	VK9xjPAcXNwOidJsc7yU40fsqtlb4DutsCd/LjbUEoZjB1/T9h9/5R32Zjqm+4IavCCLFRX4auQ
	tqGucNGxsulZ3HsrNNQKciPcl6czYIWb0Fw==
X-Received: by 2002:a17:902:cecb:b0:267:ed5e:c902 with SMTP id d9443c01a7336-294dedf64cbmr40460795ad.20.1761737425053;
        Wed, 29 Oct 2025 04:30:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIfsHVKEWsWz2BHUSJeZ10JbEH9dJ62Uke5+/3SiZnq91/wZtwSuoAq+jP/ohaK8whQGV3UA==
X-Received: by 2002:a17:902:cecb:b0:267:ed5e:c902 with SMTP id d9443c01a7336-294dedf64cbmr40460225ad.20.1761737424487;
        Wed, 29 Oct 2025 04:30:24 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d429c6sm152154935ad.85.2025.10.29.04.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:30:24 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 16:59:56 +0530
Subject: [PATCH v7 3/8] PCI: Add assert_perst() operation to control PCIe
 PERST#
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qps615_v4_1-v7-3-68426de5844a@oss.qualcomm.com>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
In-Reply-To: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761737398; l=1537;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=kRgViZa4KGaZCel0lL7UaLwBZ4oTyRhW1O/XbfTvd4Q=;
 b=Wn2wemwGSrMgNe5eofO27eQXZ77sOUAVyX9DJBD9M17t//dwyKWk4QUnx8EayalfEjFvvcFE0
 tBAHEzTYMVqBRoueX/dG+9i/X6PIb8NzwikYAt6G/sCsf1iLvVEfEL1
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA4NSBTYWx0ZWRfXzRt9SjPvgd1+
 cFMBOOYL1ZKL28Ae/hpuVp1FLDAW+IVUvOwmNUNl1t1yV0u2jQ955PdaqIm9UFvYMsS3YQwH7fO
 24rtBHkzHnKsDYL1yWGDYecssytJl0pK8Ins//w/DH3ul5WV2QIFatatILWkdpN3dCIVXL7xeD8
 cVSIFFwFd7oa5gtHHN12Vde3kjB76KJB2T4qk0aSS14VGtLsNKs6c6ishnPq+hkDGoAcxR9Cl7D
 YqCjcibBZG17Pnk8qFGLbE+H8t2QzWuOeOejeaAWoXkpEKV2aKuVEm4bcYfAbVVTpUH8hzsh3DB
 pAQWIdO9SdkmEP1wH86RtbP/FypVFM5gPec5yUHIDvKu6d5Q7KqXh0z+ZrY5seUjg3LiPlU/dy4
 aMIpZ1h1uQ+FyRAU9VJsT3EX3bPk8w==
X-Authority-Analysis: v=2.4 cv=V5ZwEOni c=1 sm=1 tr=0 ts=6901fad2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ocqi7cVID08-S0eeb-IA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: lcGtU4QjQiiGuvfbmVe5RlhnP2G7s5Hn
X-Proofpoint-ORIG-GUID: lcGtU4QjQiiGuvfbmVe5RlhnP2G7s5Hn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290085

Controller driver probes firsts, enables link training and scans the
bus. When the PCI bridge is found, its child DT nodes will be scanned
and pwrctrl devices will be created if needed. By the time pwrctrl
driver probe gets called link training is already enabled by controller
driver.

Certain devices like TC956x which uses PCI pwrctl framework needs to
configure the device before PCI link is up.

As the controller driver already enables link training as part of
its probe, the moment device is powered on, controller and device
participates in the link training and link can come up immediately
and may not have time to configure the device.

So we need to stop the link training by using assert_perst() by asserting
the PERST# and de-assert the PERST# after device is configured.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 include/linux/pci.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index d1fdf81fbe1e427aecbc951fa3fdf65c20450b05..ed5dac663e96e3a6ad2edffffc9fa8b348d0a677 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -829,6 +829,7 @@ struct pci_ops {
 	void __iomem *(*map_bus)(struct pci_bus *bus, unsigned int devfn, int where);
 	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
 	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
+	int (*assert_perst)(struct pci_bus *bus, bool assert);
 };
 
 /*

-- 
2.34.1


