Return-Path: <devicetree+bounces-238862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC8C5E9CF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id CF634241BF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77492D7391;
	Fri, 14 Nov 2025 17:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iw786pLi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SkmIQe+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988D4335BC5
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 17:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763141944; cv=none; b=up4bV+wn9DPS+g6MYofkjtld8RLdUxzsi+fgkwlBx2VLxdTTBX5tWfJwPl5qWjAgifgavuhBtHg4kQXu1mIf3ZduoI3Lo5SG/vIsYaXbXFtAB9dRvR1ZWY355yXnZBD2avav6/BAMJh9lXcgTcUobikZiHbMr/S9bLa9hSqUWxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763141944; c=relaxed/simple;
	bh=5jqsF6qpdbjHJ9L3+uMrQ8lMk3Vf+muidopenzoDqXE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ot5ebuCCtH/EL8OEZw8jsj3IbgWpbPVErUY2q/GEbQQ61jghypa3p04tya1r07sB7d8r2zQujctjwc3+A3uHF2gAJpEcgT66rxXbfOgN0LEWR2R/lDXUB8kG0rwGINoeD21C8rGu6x454YS/zwsyRLqApGp5rYrWEDm/YD7wdQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iw786pLi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SkmIQe+s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEHT4Bp397403
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 17:39:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HMxW2aaBF5DcW3MN80vii4x5Su81NzhoZ3dDWieADzs=; b=Iw786pLiSRMhyq+c
	/slhpaN96gscDlFdPEzcFtjstFkWfY6kOPIPKa7Z7xRlO6hQM2Ug7hYQ3hyjfBpd
	SCVR10He/5frX7a/MJBiXh/5yrBkUYTbocEnaKXR7TfvyJ3Fhp6AF4csJI7h1NRY
	S/TR9Qu+nFyNVHdqYijFiRg4PRhGWPMGJg5JpVxuWYvqsLQWd/dCd61B8Deic11o
	99cSi2ktiUbEL6bzXLRhSbZzFbf4vKByefzcfGuTDGNcTpYRQose1DjjGxDSUHHJ
	wM5yC1jpBnuUusFynQgMW9XiZxqhZ+Ti0NCvI3DU5Lxnsb0ETbWr6pSyG+Iuc66Y
	zOVh9Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae5r7rpw1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 17:39:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297fbfb4e53so41145185ad.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763141940; x=1763746740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMxW2aaBF5DcW3MN80vii4x5Su81NzhoZ3dDWieADzs=;
        b=SkmIQe+sxvMUjYiVCOGggBdD/qQnn0K5I7ITOulNZfRu4Lm7v5sT8uPQoDjFPFYTU4
         wzP8SNDbG2LO2MaASABTd+rof0e+tKpFqSRixGfl4ofpl5r8GVFEjov2GqFMNP+f4JTK
         0OdyQkcFW3jfjaNYB1IsXMGjM61tFTqDRGWNsymx6EPDKcDXc7Mf7l5+LSIvrnObHuqm
         ccYwuJFrGK+PsSv3ElCF/zpdmomlaG7c4eNb8tWAge303PhxbVroRiBC96UUHtdMw6F/
         itztiFQZIVbhvsXbayRg68mCPBnj/dO0GaCWHr0rIjGK7QZaWncrVaYyx5VxGiloW7iZ
         l6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763141940; x=1763746740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HMxW2aaBF5DcW3MN80vii4x5Su81NzhoZ3dDWieADzs=;
        b=VZkv/kW/tOvAH6X1PaJatzY4hJYE9u8Y7+ekj0qSaBe7fAjGQnVzJCIfng7TN/GY7f
         kfuI3VTPY77G+4Iqpx6kyBdRsFPVhedTDqGoUWYZmijQFGuDdZIS0twHAFHIejQUYNPz
         XN70RQBzXcwlSi1/mPt7R4IxkZO2/4z3bhFyXconqlZeq62E9wnR2XGS7oerjlThWLck
         hEkstTsgnfU7yVBR6eHm1NjfbdSlMMvWmjqN4M583CtwKG+OgC4U4B2l4b/UP0Q3n92U
         6PbPbcTpuxwEzBe/XGSiqDYEZXT/2tUqH9gorCNLiBAqtkk3pQOtJceXjqZwE6/J5tfa
         2nHw==
X-Forwarded-Encrypted: i=1; AJvYcCUb5xv5WH4KhNh/rUNXptxejznjRnvPnJNHCLGhO8Yn9ONCn2T5U/bNXzd9wog8OmrjHPEwGb09MQRz@vger.kernel.org
X-Gm-Message-State: AOJu0YzDwkP5mPjUvQLW8DcB9R37DyfyIa1Mf8S3nrNfYsqcqKLiuuBX
	1RCZhp9yfGSyAoaTmxGEZ7P3ahcog3TxeChVngOYB1FD6JE9hZiDmgePPjSpXmZVXcArUmq2HGu
	qo54kMEr6KJIN+odVUJ8sv3mz3V8f6rVzopl4G7ZuOi0oxmkL7pm+weNKTB2LLUj2
X-Gm-Gg: ASbGnct3Gx0oXHmBIghEUeo4ouYFV9QuRB+HNMd3vSYz0wQ3NfIwc7N3aPRTdljB7Mv
	5xb/c3N98IVclRHTmcyds5chOYjEKgPIGdTbPLLsYkVQv4B35ndwpC8l9mH/4rjQ538w2HntdjR
	spsRdMZjy5gvYmRQm+bZTyHadFJYjrhzIp55NUkFCpR9bIUIv7L5o12e1D+TgkHtw7pzvZgQF4f
	Uk44bHF7ywN08FtbR26EC18fMmwhFKi+DWmoYBVwwlvhhS+/SVxymzV8yNoCbIWQlaMN7Wf1HpB
	ZuaaT55w2vauGEGm0t9wt+vHYopVZ7V6SpN7Cc3zmo5OXxftW/yKGoK4pTqvVg==
X-Received: by 2002:a17:902:d48b:b0:295:8da4:6404 with SMTP id d9443c01a7336-2986a74af0fmr46220455ad.40.1763141940249;
        Fri, 14 Nov 2025 09:39:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHutVOyH5k64ynXYMtx+bq2Tb3zdEJvtOd9hJTOgTVPbN1aautTCRluYkEqXUbvSGzDK3h9iQ==
X-Received: by 2002:a17:902:d48b:b0:295:8da4:6404 with SMTP id d9443c01a7336-2986a74af0fmr46219985ad.40.1763141939669;
        Fri, 14 Nov 2025 09:38:59 -0800 (PST)
Received: from work.. ([120.60.130.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c24941csm61649035ad.41.2025.11.14.09.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 09:38:59 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: bhelgaas@google.com, helgaas@kernel.org, lpieralisi@kernel.org,
        robh@kernel.org, kwilczynski@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, hans.zhang@cixtech.com
Cc: Manivannan Sadhasivam <mani@kernel.org>, mpillai@cadence.com,
        fugang.duan@cixtech.com, guoyin.chen@cixtech.com,
        peter.chen@cixtech.com, cix-kernel-upstream@cixtech.com,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v11 00/10] Enhance the PCIe controller driver for next generation controllers
Date: Fri, 14 Nov 2025 23:08:45 +0530
Message-ID: <176314178823.616736.15861987413016604978.b4-ty@kernel.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251108140305.1120117-1-hans.zhang@cixtech.com>
References: <20251108140305.1120117-1-hans.zhang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE0MiBTYWx0ZWRfX4/BRKyf36qat
 22uL2kG9fAVnjknobg31k5vVmteAaaqPoxKpEQTdRyPrFNJecuCkoj39FP4xgP6FK79d7ZW/PH2
 xAzfwg9iswImuXFP5CHSQtqBBkjZ2F9FeM1+MDj+y701jRPnRk5oN/iF6tZ34tuIHd0QPCz5SzP
 QQms844lRGil4fh7KpNid+vGaBwn+hW0+re2oAF6uQMlaq9nAQC/5qZG0eYz4CkgGCBsW8xs4A+
 f++9d2Em+YP4nc9LGBfkiU02rRsu+q8iZPfXV1eZUmElUqtxvv6VMJsEZuEsa8y0397sq6dYQlq
 j02sP/F0kdDBCkFbh5iivUVlcrAX2yal/0FRElaOscepnLHseEfBiNT6DT6LHrnxYMmMwwyLoL+
 yddvwVbZvFKQSmBWeMngb4JruHJL9w==
X-Proofpoint-ORIG-GUID: gMfomVaSHsFRmM4Ew5bfheUZfQOeWOeE
X-Authority-Analysis: v=2.4 cv=BJO+bVQG c=1 sm=1 tr=0 ts=69176935 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=FzO0a8Pu37YIpYJNCzyc8A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=TAThrSAKAAAA:8 a=VwQbUJbxAAAA:8
 a=qsCD9Ejo0f7OZcNaWdAA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=8BaDVV8zVhUtoWX9exhy:22
X-Proofpoint-GUID: gMfomVaSHsFRmM4Ew5bfheUZfQOeWOeE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140142


On Sat, 08 Nov 2025 22:02:55 +0800, hans.zhang@cixtech.com wrote:
> 

Applied, thanks!

[01/10] PCI: cadence: Add module support for platform controller driver
        commit: 611627a4e5e4af7b96aab4f10d130f6a8a615020
[02/10] PCI: cadence: Split PCIe controller header file
        commit: 3977be25f5fd973cad6bed810ac1045ba8cfbfa6
[03/10] PCI: cadence: Move PCIe RP common functions to a separate file
        commit: b80a7b4713c967479752ea4801eb1d1933093f58
[04/10] PCI: cadence: Add support for High Perf Architecture (HPA) controller
        commit: f5fa6c33b173d9279a4c6c9bff166aa7881f9e0f
[05/10] dt-bindings: PCI: Add CIX Sky1 PCIe Root Complex bindings
        commit: 50067e81132b9938ae655d7c17cc6e1ec7824e39
[07/10] PCI: sky1: Add PCIe host support for CIX Sky1
        commit: 8fdf7a5556526f646cbec0c4575ebc639052ee8a
[08/10] MAINTAINERS: add entry for CIX Sky1 PCIe driver
        commit: 7bdb5b229c552ea69962aa33f508a72f2789543b

NOTE: Squashed the patch 6 with 7 and moved the PCI ID definitions to the controller
driver itself. We don't add IDs to the uapi header unless there are more than
one user in the kernel.

- Mani

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>

