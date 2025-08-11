Return-Path: <devicetree+bounces-203200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8349BB205EE
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D94F17FD48
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAADD253944;
	Mon, 11 Aug 2025 10:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D+1VAEJL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4554323C518
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754908994; cv=none; b=CwRKaZiL+OE4DpoUhXgWRePklatmVojCjCJiMVZwDL0WMDTkXzZt2ZN5D6B08Y1oY2FqW8wtWC2VJGdyLEy4xK9j+uROuqy1LLCQAt170S3BS5MzpROy8m6pEjKKj5byddYVeSkoGSDZ10Wok7VErurY0wGw8kJTzgjJ8RPJTiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754908994; c=relaxed/simple;
	bh=uI1qlE8mNwl+7U/Zq89lRtEDqXY5odccHvrk8H31t3g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UUCIQ6WMFKCytSw0Xg+dO/4kjGf2WOQ0AlAtaxEqoQQdeoMsiBvjYGFscToaxj7VbMWwmqShR8qDN8NBVppFcJEQzhzQcu1dCjKNZgO68YxHM+ry8pW1lAUbT/9BnVUrmTUxHNDu56FeTp/A7hMISC9OUQuJ0Il8QvRfAMRvfIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D+1VAEJL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9d9Tq013076
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:43:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8zYECM9evko8+4kaPfkHLKf4WdgTATPIrfOBTW6QamI=; b=D+1VAEJLDSNUiaTo
	TLFhVViWnLmEST1vj1Xzy96kl2T27LjhJhhVnZAViKjqTdZSUCPr5BGHsB4nYLLf
	IFp1ZE1v6KL1K8DbFx9M3op/z6nzgeTor3XV7hFr3fw9yS/7IO/E6f41vtPEQOg9
	tJoDO6IUa++JKBGS9Hj5twnTDx0y5iLmCs/nEm66+O+nCfXn2yqyv7smtbvLqA63
	TTC2rA5JuWCDIDXPAhkXqYPpS9WReKGzeE25d1UOoMVC1QJB3DMAypcrMyg9g8kF
	qtPu+u65t4+1Xu9O5NGBUpvxPRUvET9d99zFMJNSTcDm4I88YbgAo7neelsjXZIf
	HRhVzA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmm6cr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:43:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24004ac2ecdso69896425ad.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:43:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754908991; x=1755513791;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zYECM9evko8+4kaPfkHLKf4WdgTATPIrfOBTW6QamI=;
        b=eRx2rHhDTxoq0dTRyrYLgg1U7fwuD49Wd4KpfFCA2WFK/6D2dxE/EOTSVOlZSZLDU0
         U0Y/glXNZXqlunPZY9zXi+CMrrGDvy4fQes+md4rgGyWFatwxubL3PkbkegS2BLMv6CC
         vdi9tu18MTKOODmnKieMqSFpGpJV53Xamvq1TOvmoFUwgfPs5YWuIAKvnqnL95CRXz5g
         EvkDqaZitpCKJAvRnbltjcEzqz8IUM2tlA/M59nwFnt3kLTxFjpI4CuyMJMMleWvugg/
         B05EtiSxfRMOqmIGnoXDS8z+4l0SsXsPmUEpz6lUlgvmWUs+mwJSk/91hM7mbSOt2W+4
         sR9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUnS9SiaO+NR3Gg1Rxf/0mp8Dfs24EWZBx0lUSrv6DDTuhcH5V5bRu0QBzio+CapAEjOhi1KC8Qe/UA@vger.kernel.org
X-Gm-Message-State: AOJu0YzxlytCevJmBrVX1udl7lynkJ2d4h/02sZxxcSudkCFWJ5DTTKg
	INrY/mnGRIKsyieYkLvpesFSaYv0CkcowYKV7YT7cZZt7TvCCfFN/NQwgil038itjxEZEdz+oEq
	Vq9bkWEUtQKARwW3KjTxVeJuQ9OOmyQyFevmu80+qyK30ZkqYKwxmuI9dcemQLq/j
X-Gm-Gg: ASbGncubyFxAerI04TzkXodR5r3HGF4aTt12IVwI0fDzTg/3goclDUYG/hDvgEYLV5A
	fPlJDnvvPPuhyRuj8dbTsHZLV0DZBspCoU49aW5QfYaYshl3v6gt/1TqUWk+ugtZ/uVMG8TnEZB
	1Fgt/gKwmt9bMPnSiqeqqGMoJE/+m7FHvCcsotqe2cLCBOmILF0JuE6CZTEXEg9YFaNhg+Y7xTx
	U63WPtCtyrvSv4diNrqaPwDR7SPzKLEwewOclDWAZiFE7bhEljjaeZKwhCzqXb37mJow3l5eQpw
	WLmnNuqR+uAFj1S7KDVGjakcBcA88ZMwQ29LbIrv
X-Received: by 2002:a17:903:2391:b0:240:96a:b81d with SMTP id d9443c01a7336-242c20703ebmr149368805ad.5.1754908991099;
        Mon, 11 Aug 2025 03:43:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlsLmB/Pp/RBYg+2IKrGsD7TxooswoCU4sh8Et/J0LGapHBMCtkeQm+I0Y4vEDJ1kjwbVqjQ==
X-Received: by 2002:a17:903:2391:b0:240:96a:b81d with SMTP id d9443c01a7336-242c20703ebmr149368575ad.5.1754908990693;
        Mon, 11 Aug 2025 03:43:10 -0700 (PDT)
Received: from [192.168.68.106] ([36.255.17.227])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8976cbdsm271590415ad.75.2025.08.11.03.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:43:10 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: bhelgaas@google.com, lpieralisi@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, cassel@kernel.org,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Sai Krishna Musham <sai.krishna.musham@amd.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, michal.simek@amd.com,
        bharat.kumar.gogada@amd.com, thippeswamy.havalige@amd.com
In-Reply-To: <20250807074019.811672-1-sai.krishna.musham@amd.com>
References: <20250807074019.811672-1-sai.krishna.musham@amd.com>
Subject: Re: [PATCH v7 0/2] Add support for AMD Versal Gen 2 MDB PCIe RP
 PERST#
Message-Id: <175490898683.10214.13460972543852737432.b4-ty@kernel.org>
Date: Mon, 11 Aug 2025 16:13:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=6899c940 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=tivzXH558BYE5qsfyb1zSA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=PQAuWm2BogaHsNf8J6gA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: NYzM_RKtycavw_SuSLmmzU1LxSn-3JUV
X-Proofpoint-ORIG-GUID: NYzM_RKtycavw_SuSLmmzU1LxSn-3JUV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfX6W2jNNCg9TR4
 mLf1l0t87arqy5KgZuO4JWOZsh5U2FaXLe0mvchK9kJUxjvnZeFhAeDoS6cEGqbWhXaW5AglSIt
 83jeFa6ygbbSo4e1azWmzl7Jh2lrslmcDs8ct+QWv8pudQa9Puih33DSerkvj56bQx+HM/UAv30
 ubDxn++5s5OJyFktF9NnhdGrJOgjYQs59QWKDu7bzNHN5M3tbesZKhUnRTynjE8uNPYrJt+J8qf
 x6PR/mQYzd8D5RN8Wxvv/oMg/0Y7dCP4GuuXkeTra8/wmmHr3Ul5EXnUOjEOu7qUOam/axUFUmu
 9Qddg0iP016+HZNsyfJ0fkFdTxbca1x+Y/eW8jonayYg4tMIaD0/Jhx20k61lhBGbZb297wUBH8
 awXPBngA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000


On Thu, 07 Aug 2025 13:10:17 +0530, Sai Krishna Musham wrote:
> Add example usage of reset-gpios for PCIe RP PERST#
> 
> Add support for PCIe Root Port PERST# signal handling
> 
> Sai Krishna Musham (2):
>   dt-bindings: PCI: amd-mdb: Add example usage of reset-gpios for PCIe
>     RP PERST#
>   PCI: amd-mdb: Add support for PCIe RP PERST# signal handling
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: PCI: amd-mdb: Add example usage of reset-gpios for PCIe RP PERST#
      commit: 0b9275edc3543d0d2d03313a7c8de5157d61b189
[2/2] PCI: amd-mdb: Add support for PCIe RP PERST# signal handling
      commit: 1d0156c8b230ca74272708a3206684e6d6157302

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


