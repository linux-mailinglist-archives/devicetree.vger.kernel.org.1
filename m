Return-Path: <devicetree+bounces-197338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5EFB08DBA
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88F493B778F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:00:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215DD2BF010;
	Thu, 17 Jul 2025 13:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dHiVSzOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2C82D541B
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757255; cv=none; b=pqkcgvTmcoqfzWM+q3a4qOTcMVhh6fmrYUTN9iRAcMnOpj50VgexOMgOEEEYOPAMibXie/qHwbCtX7xTUF24pEm94+CPqWG2EIbB/FQL2xfnQqkIIDgjgK4bLaptLGFSq01jrfr1gC0bT16FTHb0Iu0u7pu0f13pYy7g2YJmzRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757255; c=relaxed/simple;
	bh=XBWj+K2b9C8/2lXZd2Ys5olIeeGxyJQzoy6N7+ggAbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CbCgEKp7lzbT6J6fANFku7K5kPtNR8/q1GZVadJc8XSmZPXrGt5TeGZgsPzPrsVK1i4iqhu1NsKswWK0Phjjb84VeupW5UsrRCQ5hOoLqPBUymRKyzjItVjADJUJQ0CUxAcvy4p8JZE/FMOigbDFgFC6TXkSfSAOB1X3Dfa+ai0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dHiVSzOa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBrQXi020802
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:00:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sw6LPLuhEELuBjJMJTabeU8hBl1JfGGZnqYPdlkW7+I=; b=dHiVSzOaPCs2zqZs
	j0DJMIQDmqOAx1UNpYj49VA63b5C9coVlfirV7zVd6bJ0P5LcGqDrgETd07XCnJD
	yCa5zacyWM2AA51iXeZhXDZotgYNwLzEX/D+QKFsacgD3JEO2xmkPquA8N1TrGIQ
	KZdnYP0GqGgQ1ULhGmFU72OwpYJizd6wCi7YJyxPK6BtXidaORlfkd2TfGLANp06
	PcLjgVUtOvKToqX1KA2K/1CzPllDKgoIOMwdmHGK8OH/5OTfo6l/0wKOPrlYs6AE
	T4MVKEBH8x9esyoDuPWuFv2/lgf6p9Y+y0KTU+BrtEwKUFYu8SQoRJFnh9BoFYzU
	yFoHew==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpjrec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:00:52 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-237e6963f70so15044835ad.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752757252; x=1753362052;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sw6LPLuhEELuBjJMJTabeU8hBl1JfGGZnqYPdlkW7+I=;
        b=Zb7gumIhiJfoxheR8f+bMX8vAqwDqkBMpAGNSfTyN5XzZw5/4ymXPCNc3GUVW0TUpw
         aZ+LuO8Clm/7yC8sN3waAM4oCY8MORHKnDJ+MOBI/wRgdFQ2F32R076QFaNabr3evh1Z
         J+ybHxJnHyF7FWvzoUcvOxO0qFe71ybQg/ix/oN3m2n9Wvts4BWW4H3ZUJx3JmUC3WGn
         OXtshoNvibcC36Ntu1dzdgwI1uitSQUArRsvsdBVMdaS7ltgGKa8MEwFI1A0mjG9O0Yt
         Hyv9KR0JY7QwJkePYK/EsgGTFJYbrwXroHgL9cBvB025AZ1xXp1k3SrzSRGq1wf9nUrO
         tKBQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7++tvj65j29OksDZFQd/9kfQGT0CR4tNxwwq0/iqM3gE4B2U7ThI8dk/9xRMAPUJVpXO3TrYKl+2F@vger.kernel.org
X-Gm-Message-State: AOJu0YzFAaQRzxkZGVfWBFXWE/vZpiclkSXMNcJleANwZaTEkbIKYCom
	qo69u50Qfx5rAjIteguQ6nKVHznDNTIJnA1bGmEC3O1OokJa8LxUCc7o4wfO61oKaeMljk897Q6
	Z+qgyqPBApaB4zmATFyCClXQ5fJeDI+WdBSWBpxmCa3irZz0J/iDfB041Zmo1bYRV
X-Gm-Gg: ASbGncsQ2fGOGoujJnmFDEFEH8PvHBPsSUoQ3Xbn/ejTQ7i8KlvFUqQbN7BXF4nIc37
	KNQSmFc2IiIxioiXa9XN2ubQb9P7WuqTAonsLSVFv8OxcWl/zpy60DcXR9nZMq8epz9r5Lmraiu
	W5cq3qWq38g4lZf8AqZUz0gfd+5ta+yBFv3J0AO0xCSEk1AqcbvZoY7hxFwHMxw+wAVy1QmjV4w
	fIeJ2cfvjurZ5JXuslYEio0wjA2PLTbuLTP+36IJU+ea+B9RgfkI1YuSM9I6VDB6Ic3HZ2ijVos
	8lq0JwolTkffEnq/G2v1ET8HVN6PDFvIbbuQ
X-Received: by 2002:a17:902:f547:b0:220:c164:6ee1 with SMTP id d9443c01a7336-23e30338824mr45454085ad.32.1752757251676;
        Thu, 17 Jul 2025 06:00:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPXXNo8cXoPkWxF6QYKGoAcZdb1+peqzLQ5KqZw4p93lkII9cj+MigMVeqxxAlIyqbiB13Xw==
X-Received: by 2002:a17:902:f547:b0:220:c164:6ee1 with SMTP id d9443c01a7336-23e30338824mr45453135ad.32.1752757250981;
        Thu, 17 Jul 2025 06:00:50 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.63.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42847casm147179855ad.14.2025.07.17.06.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 06:00:50 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Jesper Nilsson <jesper.nilsson@axis.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@axis.com, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250710180741.2970148-1-robh@kernel.org>
References: <20250710180741.2970148-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Convert axis,artpec6-pcie to DT
 schema
Message-Id: <175275724738.8776.8637174515757948922.b4-ty@kernel.org>
Date: Thu, 17 Jul 2025 18:30:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExNCBTYWx0ZWRfX62Co07I6SfP2
 MpjY2kdP9qMOR/gJbmkCT7kMEURdjgcY8Jm+2PH14TAuZ8sEiVsQ6t5GHraFMFlreDF5C0JIpmZ
 X0DRvquF5bXLR2vlaU8jCfjLEjb157gCtHtJxb3WdMS6HCv0s0XQFn3RBkMj/QU+YSLhDj+5rd+
 xlYBtujWBpv+1dqoGtkB67q/dt6/MOxPUhiZiQUKr7XW+alNvYjLdgvF+YFWikETytR/1nQd5u9
 5B5hw5XUQGcF7HK/IYKIdEC8GE//dtK6TEIdDFOqgPsNJTLLB5gKudOBAgDLlKJ+kNp1CStTg0i
 AuRgd9qf0hjCkNplB2+U7kenOBsCVOHW3pzKNGJf3gAhqlvwdbRL073+LBVR1hATPNMUL6t1EPX
 +hJ0mHxhDLtzMShmSMBSbQWwjUOx7QmD4pes0pFQ79ywhlZXstfCKGoIUADwoEcsmrsXvymH
X-Proofpoint-GUID: miZTS8QrkUDFPRqGC8_lcd6bycIRq3bJ
X-Proofpoint-ORIG-GUID: miZTS8QrkUDFPRqGC8_lcd6bycIRq3bJ
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=6878f404 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=A4mJK6/VAfRUM2WLv3bxlg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=oZnIUJi4OH_DVw05ZF0A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxlogscore=863 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170114


On Thu, 10 Jul 2025 13:07:40 -0500, Rob Herring (Arm) wrote:
> Convert the Axis ARTPEC-6/7 PCIe binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: PCI: Convert axis,artpec6-pcie to DT schema
      commit: bfde613ae16ec592e2aa28ad7f7729bc20b9382c

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


