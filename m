Return-Path: <devicetree+bounces-250580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 751A5CEA460
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B143F30378A6
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED8732B9A0;
	Tue, 30 Dec 2025 17:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JXGZfnXN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QIbQcJGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817C530B53F
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767114271; cv=none; b=ATlEPmCV+ZQSGwZhOR0BmK334h4Gtl4yyO2qpdEOWsKC79gle/NqqjvvHUZ5jLf28bUoL072pj8rxI7ByMSF3sto8bRlbKcJxonzMU7u+3VUMKh/5gTvHbGFBh0gAN/eRshq/2X+2mGM5YtuN//Vz+C4ZCXwA6aNbFPizpwS4D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767114271; c=relaxed/simple;
	bh=6sSH8eEy/V/LbtFHwav5NOYw6tPgPJDb53fy6b2Vi+s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QMSmP+n5spESlFf7apG3/RxBJB5eHvifM/qXb+SNdqFvEgV7ggP3WtL6MAOUHppAzNN+7l3gET4Jt8yKlcuRj2QW/BLj9R7lax+uYjfZVxqh/Df/8yQqEuCxMRgUr2l4M4K8tmHdUKjq2qpSDe5VHIPSvZjCdBGV4ItG6LkjG6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JXGZfnXN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QIbQcJGj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU8p2xu2286074
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oahDzZtKp4aKLWOPEag8A9pjZDWXjStTAMgcucgxXPI=; b=JXGZfnXNfLVFmMON
	bIOd9bLLjqETvvUvWjMIwTVw82vA3dmQa1Y+HwVdUF3PomATZSd94eB4jg7E6v0h
	iGe1ff1Avvl8N815zbLxJi0i1gqB01ivEw/q+3TZcAtqF13Labnu//Rov+HuLVJg
	P+Vz6yGeaY83s28TuYRGrEva9YKj5UTTeZ6D8CD7AkS11B2mpDmfErbPFbRMqlGF
	PxxZEvwzDTYGopvQNw4Nw+6I/l97LBfD6xMuitrjEC1X16/3YnH5/t2MFNqvErGo
	5cyBl6PAQnhH3qYENbn6EUTBwRK1Rcrqt4AAvJ0A/KsAJhn9Pj/eOFTZei9heWlU
	Qz1WGg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc06gtjra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:04:28 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34aa6655510so12476504a91.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767114268; x=1767719068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oahDzZtKp4aKLWOPEag8A9pjZDWXjStTAMgcucgxXPI=;
        b=QIbQcJGjHRn1PtZYO7LIMRBkz+VwQztC5KyL+q2Y3GMIBuo+CWt6URFeijVuOL+pMn
         ouV6v7O4KX4Sv40zQVvcvi5E8UYLmFjUsD2pkSs86ra3mQN3Ymj/YBYY0vOk6SjaepdV
         44MkafZ/4w1gRIUyR+tkYqzGvKebs3X5MpmW5qChwHykKEic8XtWxveNzGiYKZ1JunKx
         9Ca6c61+ET8K5CoMMaFZe0ii1M0lSxQvENIeizHslbVcGcNrqh02o6IS6MJP7XfWfKDQ
         5Szghrq+DhMHxzwyOFdfZsIZTWg6u5wjcchxMKOtz0PPI2fothmEW6wybzPnfvUlvETj
         aEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767114268; x=1767719068;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oahDzZtKp4aKLWOPEag8A9pjZDWXjStTAMgcucgxXPI=;
        b=dE4dEC5q1p/I75o4r/su0ys5BDrWZD+4FbQqtCSk/HMlXF1reGCwIJ8ruf/Z1ijZnE
         vGfrU0eG3E1wCYbce1WX2tPbi5EiQfQF1lIm3G7xOMCiBQA+RPjxwoc/lrRgGTLmsQhN
         E/X+x6MOTDW6O/iukNHx63VsFNTCZQwE7NKePhydVUlvIfxxbiDx4M8Gsg6uRHE0s1P6
         Ha979XBluivak+nPDo+OZT2MVNJIbXC483bJMkEXRB7Bgeve0gq0dgO1hQByjqRIFJ+s
         vv99akIe3bnE3XVlJF09meJAmMd1oKE1E4xnWpYSiR3qAQVcpt4gQN4FgEmN9L9/VnGu
         5AFg==
X-Forwarded-Encrypted: i=1; AJvYcCWHrWlqyI+gHVa3N2E+YhGMNrr3NgGz/4KIh89vXZvxJhPObJLqEqC3bVUdhWIOaI7k1F6ql2DnyRGi@vger.kernel.org
X-Gm-Message-State: AOJu0YwiQH8WYEmXUVvDEbTYpoe2fUcJEMFGH4Nu+VypoqEYwNEn+yDY
	v15Qm40OiLstgoY51XwXxPIwY4Z3WCy3ZTGuNEiSNRqGNjxfRl/6OiKD6jEpMbuK9T1Itw6VdA0
	u5QIpwIYiQkAwA4nijCIAVIq8yjbMwLXy3gPNY3yfjra1mjOjiROAx6Y1bPFvz5I2TmsjGWbl
X-Gm-Gg: AY/fxX6quG3FQuGKlB7M7Qk+OOb5RNV7I7Y6rn+SK99tV3cQZtrAIy7q4a2utCaDHT5
	2n58oU9Osg9JrSedNdl+e+Cskfq6hqUfec9kDveAny599g2efyPAOfbdFq4jKBF2xOs+S2szprz
	KWobOdcUWioEhahwPPvlhLdI3gzv08J2GfDRU1WrEG7KT5Zjqoey+OIHI/FijMifa0xRMVorMn/
	Do3m4fwovNu+YEphsffZYpZ9QpFZ+UPDJys2CGIHF4rN/5mCCuLoyEeCZikVufTA1Rb/c8jVXxk
	yDOu/Anqy5qrHQ3MjkOWlFGLlyx0pe5oEkx5876MPWAxBCnSS+jzs/7xHANt4GoR23CX1cqghKQ
	ZwoHZx/w=
X-Received: by 2002:a05:6a20:9392:b0:35b:4f5c:4adf with SMTP id adf61e73a8af0-376a96baae6mr27914903637.43.1767114267740;
        Tue, 30 Dec 2025 09:04:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2Rl5LfHDVkgfWMi9X/mea7YMMMGHUdRao3zak1EyBlsAdgBNCXkb1Y5Gc9zz6/BvvBV62jQ==
X-Received: by 2002:a05:6a20:9392:b0:35b:4f5c:4adf with SMTP id adf61e73a8af0-376a96baae6mr27914869637.43.1767114267222;
        Tue, 30 Dec 2025 09:04:27 -0800 (PST)
Received: from [192.168.1.102] ([120.60.65.32])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e921b1666sm30515521a91.7.2025.12.30.09.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 09:04:26 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251215212456.3317558-1-robh@kernel.org>
References: <20251215212456.3317558-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: socionext,uniphier-pcie: Fix
 interrupt controller node name
Message-Id: <176711426350.2039520.18416499850960877912.b4-ty@kernel.org>
Date: Tue, 30 Dec 2025 22:34:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: mY_0kaAYpkxl-xNeo2WXLOSAacMQd7Ek
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE1MyBTYWx0ZWRfX1c2EEAqBmFgR
 jKtGx7r3LZOk1MCUzAGgh9mNvci2hrP6TKc2ElGG0+oqMROLiFm6vDIKtrxZjZ93mm1yzIakELK
 LPFMJ5q5d+6+mwpRbDOaYQ2g1pttbyKdgdt3m4rpc7iO7ms6yxXCvshZnQe4HUB3ZEEKCaPsfi0
 jxRHY/ZCGp9FDnNwY1Z7Ap+Sni0QNE1gZNKYVc9R7wjFnSYQdfOM124hVYOMhlVc6Le8yN5E4K/
 g4pzf2tNCUtUY3CqFol0OGEd/QM4EkJo0l/hGtuA3le0LI/Cr+EpNkglynopBJm3DBMGWLn0nzF
 NtE0KWaV61OmpF5hy5d1SljMXXTC9rGHS4w1pl9xUTMuPegsC3zX3K/FOHlZXsTdYIxYucGU/2J
 wRaeGpNH0qN+HhDuVtLhM7L1i7wKm+XE89h+MzDBifqDSNy8iLj313lFGGbZ/eiZrsc0Tsb812K
 plbyJIOTX4dDzZ8aAXw==
X-Authority-Analysis: v=2.4 cv=A45h/qWG c=1 sm=1 tr=0 ts=6954061c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=+SK5D59PVgoENw9OlSzWFQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=W_j9OZaKoQe7uW5gK9QA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: mY_0kaAYpkxl-xNeo2WXLOSAacMQd7Ek
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 bulkscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300153


On Mon, 15 Dec 2025 15:24:56 -0600, Rob Herring (Arm) wrote:
> The child node name in use by .dts files and the driver is
> "legacy-interrupt-controller", not "interrupt-controller".
> 
> 

Applied, thanks!

[1/1] dt-bindings: PCI: socionext,uniphier-pcie: Fix interrupt controller node name
      commit: 2cca8d79709e1debd27da5dcae2abc859f41db70

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


