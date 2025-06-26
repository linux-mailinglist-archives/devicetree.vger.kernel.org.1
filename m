Return-Path: <devicetree+bounces-190111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81877AEAA4A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B623C4E124F
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9703F218AD2;
	Thu, 26 Jun 2025 23:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ktnzspxm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1020225390
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750979713; cv=none; b=PqivTPwfixoOuHZaPWlYbeJdXvymTzQqi9NqD/uunDOAFwVl3za7mQCdHTk/QzabIam/mowrXMFq3s6HKF/Yo2ElIF9vs/a5GQKwBwAo+eMEUtK/eXznFamhsAwjpWNZOHgaxaQoIBlBIIh0GGttEKyDpz8dlvwnfLmIOW/r5UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750979713; c=relaxed/simple;
	bh=vW15Jg4ggX9gIZnwDizIV0mWZcRQyLuyRNHdO55b2Kg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Lzd0pNt50plXdffrlM/Ws1qyCc9JkPs8PjXDbBs0zxAgFnIjN6xiha6kq0pdNIGP5+CGloRnQULB5GHXIgpgQStmHFolH1bjMJS8ZFjJRr18UwIIOGIcNhNBVXjhDCgn3gN12B1C4d33gTNGnCLPGBt6QK/garm41m2NokOOCMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ktnzspxm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QIdiXI026643
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:15:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S/H0Qgqe8Ttzr2u9kRhRfs75EuPnlrJgM/cVTTvn1kM=; b=ktnzspxmAA6ZEndD
	OGt5QqK6dizC9ot5Yo2VIBXMQnNmkWOqulXMADMg3YQvVOBcsE8iqPzynOU1P4a2
	EHQZgV+yKf+0cvFa7cxPZ40cK5CnFJNLoR4Ng5ra2ROqM03TeXtDytopLLHfeUr7
	SMXq6+f1HISuM0SEG0mazodDIlGpGdaOQlRSNiuTPAKL1o30OBpj5Vp3TJGYDgyL
	cn9gXJMqP8n421Thmm34Q9+EhyNS0LECXmVYOuhFvjdGrAlSVIF0m+ZcYw7zhBy+
	R0SvmkGE6lzLrrTX9XEIeX1a05niQTJKGUYXWJAL36qe9EfRPyxrL+K/ECdfhtjY
	/DuvQA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5wyns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:15:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2382607509fso9243415ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750979710; x=1751584510;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S/H0Qgqe8Ttzr2u9kRhRfs75EuPnlrJgM/cVTTvn1kM=;
        b=TBhx0LopOdfzcfBeK+W6XWcPPfzwVOTREwAAI14in7EXxZwVtPMA3JiKuXYgw9Exo6
         rBlcjoyupGYACrPtGVZnoq4Dz5ovC/A79lpdR1A2dO6bUb1lCLC7bLY/G7j8x31tmLUX
         lJwUR3d2LIlk6xOhnWrH3dv1iy0l1C0y0gOZkNnPVzen24CHwGQ9F7kylWtOk7aAXNqr
         Zg0a/eXgvv/as8w6rGUjevAHUU5bQcKI3RP5SQZd8Gd7qeW0HMyElBICEbi/Hou2TLZ7
         dxvY8TKuxlNiET617rokw4fSswLnp1L251Obtw5J6G9oeXoaG2RbpMtxHmgACSnF0Uwy
         Ixgw==
X-Forwarded-Encrypted: i=1; AJvYcCUK0VQQTl3CSCaRAB50u+1+GM6KnxCb0nj6MREISjTe79QOwcFcq2vDDJtvuHbA+fLwc+KjP32fVE8A@vger.kernel.org
X-Gm-Message-State: AOJu0Ywuhmzl1YZ5CrjxlA8LkkLpGQbVgMG+74E6/6Ou7VS3bMJX9qlA
	POokmoP8iB1BTVDUXmkViJ0OBVsJsXqmi94kGwzXNfj1CWKcNBagcUfJklk8Blj0VvmWcyayYtd
	9EJf+zzPJeVVTxbgAK6qbNTzX6bn7VJsJNsnAGhFuMay6kwdxvXc3ERMmONih00lV
X-Gm-Gg: ASbGncv0p2H5gU+ztLgapmO2seWrikO9Ff32UbxjvacioeVnqG6NFSeGZQGJoNYxgPZ
	4Esv0QvQMauW2IyDmwJzxDdCJNELzlHxkX1EreltEdgS8e9x/qL4D/3k0LVuiw0Wrg9vA6abemY
	qhPYJDwzEirzuRoVoW0ZjCLWrJsQicU+SLaAs+AMzYfGZyBah3ricpYW0uXKeS5TuGRW45iUXv5
	p+uepIUb/AeIHM+/YBG0EEegOzX/hVpkMiHI3gMIbsloI9DS9c2bXm24af43xVHh/BMM7g4+EOB
	oTcMEd5VQTBNfsaC6eVYkN5bls2oX7Pws1ydKLqI3KcdW62PP4sHhD/UCjU=
X-Received: by 2002:a17:902:c950:b0:22e:6cc6:cf77 with SMTP id d9443c01a7336-23ac4892b49mr13020665ad.53.1750979710312;
        Thu, 26 Jun 2025 16:15:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkESQ640EkWWC8nNRcJBp88S/Bs4Yykcr1wceJ0RysJiVGp4qVVD1GJLszezOxPjlkSG5Fnw==
X-Received: by 2002:a17:902:c950:b0:22e:6cc6:cf77 with SMTP id d9443c01a7336-23ac4892b49mr13020155ad.53.1750979709822;
        Thu, 26 Jun 2025 16:15:09 -0700 (PDT)
Received: from [169.254.0.1] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3adeeasm1548105ad.156.2025.06.26.16.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 16:15:09 -0700 (PDT)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: linux-wireless@vger.kernel.org, Rosen Penev <rosenp@gmail.com>
Cc: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>, nbd@nbd.name,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mips@vger.kernel.org
In-Reply-To: <20250609030851.17739-1-rosenp@gmail.com>
References: <20250609030851.17739-1-rosenp@gmail.com>
Subject: Re: (subset) [PATCHv5 0/5] wifi: ath9k: add ahb OF support
Message-Id: <175097970896.153431.14153254117038791906.b4-ty@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 16:15:08 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: 0Mydx64qi76ONn2bqZ5_7WLS9NHm1XuN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDE5OSBTYWx0ZWRfX3kSkkip9GY+z
 zmn8W8faLUCmgUAiGm9Xpfkszz13LZEaZ5x79/c1nCqLQI1p2TvaFVy41nj9xjv6LeUkPANt8XZ
 bo0UW14JjElv5z+z3pTk9yXHc6atKVHDzTqfTROMU5W41maKKBnFdSqYHqq5oOC23OoW39sWL10
 RmISedbUpzrHy4IBlFNG/6h9CKOuHmE+z1/cxMIxQ/RpQZrSc6uCsGrRZE7cGqxfzWy6bq7LuVw
 EdTJ1lJgQ1MWgtRExf3FC9QUbDGcSBIveEewGgAQEpLp1GlWbCNyZ9sU+E/xkoINrjYEfLKqrug
 z/dsGpTqV1ykoREUlWZnUBPEydeLGztIsbjTNqFbhktK4/ahzUstFFW0XBCoP6rBzntswRPCSiW
 S+nTjCC3Y7rmFQz6spzt8ITlWen2Cu5rBJ5+AbmMFc8D4RkZclPPgYVIgKiVuUJ/JOjFKdFQ
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685dd47f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=aMoWnUFRsw3tUzfFL3sA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 0Mydx64qi76ONn2bqZ5_7WLS9NHm1XuN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=724 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260199


On Sun, 08 Jun 2025 20:08:46 -0700, Rosen Penev wrote:
> First two commits are small cleanups to make the changes of the third
> simpler. The fourth actually adds dts definitions to use ahb.
> 
> v2: Add documentation, use kernel_ulong_t, and of_device_get_match_data
> v3: Use qcom prefix and wifi suffix as in other ath drivers.
> v4: fix up dts example in Documentation
> v5: move back to using qca prefix. It makes no sense to diverge between
> all the other drivers for MIPS based qualcomm devices. qcom as a prefix
> is used for Quallcomm's ARM(64) stuff.
> 
> [...]

Applied, thanks!

[1/5] wifi: ath9k: ahb: reorder declarations
      commit: 5cbfef9039f61691c87f522f8761d628033bc392
[2/5] wifi: ath9k: ahb: reorder includes
      commit: c8123302c01936d297e22adbd75cad38c5049f92
[3/5] dt-bindings: net: wireless: ath9k: add WIFI bindings
      commit: f902f2c39a807382353b4c6b8d8d4ac1f03aade9
[4/5] wifi: ath9k: ahb: replace id_table with of
      commit: 2fa490c0d7591918bed267059700f1c9e505e881

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>


