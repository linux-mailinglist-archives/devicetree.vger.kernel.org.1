Return-Path: <devicetree+bounces-247245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E876FCC61C2
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6313B302175F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 05:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A282BE63F;
	Wed, 17 Dec 2025 05:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f8cENI7C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CvMtoDs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE77F29E11E
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765951020; cv=none; b=Rct2viX4TgnZHGOvQgSZvdYchm07ffX0ZL2hASsWgtilQU9bqnn5+jXaKedofLhIABTsELC443ENkneatE/IusCnw9CwWIF3h7ZPt2j/hnRWESnMKzc5uPwdkzlEW/EcyDQ/SIuwdvgvBBzJiMSVK/tdOO1GV1l9nlTmLLOW5j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765951020; c=relaxed/simple;
	bh=49QKdd1rResSr9+WFm4h96lUzpViWpr1EClIelvNMcU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jKQ16jPrMHkkzUQ/ZX4J+WS1vhwDM3JiHzqwffkWoXkd7p5L9nbDIYeltZdq0jLNI5DVd763tQsy0VRkxcCuMp+CBRWuG99rDKpzVefEzKIrcM31aVTNeq3Ts13zsZgfPYoCXFG6CIs77H417tlHWGjOa3QxhUv8YxbKZ6X++ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f8cENI7C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CvMtoDs8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3ofSw1564856
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=wktoM/xMI/lMCMybEQF3gQP542uMbszimgG
	mHfoSnPQ=; b=f8cENI7CvewKfgt0m5y4dkKZAQISGpaSoCiFZ9K6139FGXOE3wv
	rxDcq6odLCRSodQRzlijdHCVbTpkuk7VY0jRexl+r5lZu77H4qjXuh/emAlOwmtH
	zguZpAmiNf33U9M/7nJeuyJC6KbOyLwkCacbXI4soGg+OTWh6a3hUw/xo/ojIloB
	r3XYc6EeeqzAiwXl71RUQRjPgToAU2zqN+IUeMXMtiZIqFmshKCPtJVrKU0lll9T
	6PKcgHBvGqJ/r97tGfcJbDU3cw7kvWkFze7175wXOwyknpSPcKV3pZx2jishTIHY
	yxpjukvvEHSGdmHnehANoIDbt2G8hd9odFg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3myj0afp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7dd05696910so7665982b3a.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765951017; x=1766555817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wktoM/xMI/lMCMybEQF3gQP542uMbszimgGmHfoSnPQ=;
        b=CvMtoDs8XjdwDlYox7fyBydE83OGYXQReoDrVwS1AXcPHAfKHC5baFgw21vz2R06ew
         XvFygAOt5XXvW2vExqjFBrbvioXhhhPlX1JmPOq29CgptrhXroOzpBuPHL8wHOEQCaVx
         xUjet6nnyONItc2jtHZVM2AktrZnIXlUFTUoAPn7mvXrFtPzDAyaaIiv8ls7lnR4aA4K
         be9o+gaViS53K+OMJ3oU7OVUvrn2bZSwulM4TpT2Fc7n7UTfGBYvk23izGbA/g3MUQiU
         hPhBiBE881Bf55g/jtL9XMIZCNCM7h3H5Lc94EiSZjkJmLfMGfzihXjA5lYYRXR6qFJs
         dNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765951017; x=1766555817;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wktoM/xMI/lMCMybEQF3gQP542uMbszimgGmHfoSnPQ=;
        b=OHli0hlWT4QYix0+Zzq58PQIy2HJOw8rSVoAAZE5+8VFvHSqVaTVtjkmlZqEun9JfJ
         DgXdGv6u7NO5Dj7OcCzGr6WvEeUA7ZOx3VY9GR9Pdoq99giNA2sOA4veGLH1S0JYajvM
         Id7LPeKWZjMpMhAOREcIB903lYPiCbHQbxhydgtqTAGhK3ulziKJPYsgWl2Kfzmh7JmI
         k1xUHID96hVPFK1BZXzn3vyomT74x6il7BYWuZwSLz441otwcldCsMzCUOnA6V1WLlAr
         mgTeOxQhQn0PUNkOAFWs0RKgeVNfznvxnTvUO+BuTEjMXsnTGCIjpLvBNam+5h5QxDB+
         KmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6XbdB6+NKJvovkyT71L3m4kFlkX3oPgdGCQf+O6ausd7Q/ozUprlsaxgNN9q21If4orLGvnVuLKLR@vger.kernel.org
X-Gm-Message-State: AOJu0YxRM8zZctYDVa653HR/z7RJuL+uAKjdMll4fRvQOcQljHrE/gl7
	urqioI4JX58fJ9UhgmmBlYGQthmUBLZ6uZpgcjhYqQHPYDemz15YE4iuuFo30Ryj3aiWeQePoZi
	QDnWVLAeOut6dIL6dCcCAfvE1cHx1jh9V50iGe7Mm79AWvw+n6ypTty51tHzpipNX
X-Gm-Gg: AY/fxX5m31ke6AKxnki3EcDu8njixA1k04Jw8GuAF+PGgWKmAoOG2XokE+ql/Smn+BL
	2d6WQS1YlbqtUzF0CR9StgGrHlcAyg7FHmC2EoPUiVbChb40+pEfFaNJ/nRXT2kaeOasrQ6rY1u
	NLvd89PhsPyjT1YqWyOSPXbq1akgOE3qoRuU+sdAy8QLZhPPLI3V9ryjFKJ9y95No45vRbN1Ox7
	4bqFugi/FlHsszIrxQaYqja7y9+d8S1qBWOVq5H5g8JrAkCDX8FNVFLmADkvEhWRQSa1JxtoTU6
	lpGrCJMWlk9XR2u0D35a6fiuWUMZue9ap7z3/4RrqHVNipi48lj9AQx7KFImJFo03HB1YOpFz50
	Mk7AE7E2Az0VlMzyNhcHK87s0PgoTTJGASJ+5rhTQrwFs0siEYImfb6OIbeEGj0jqpICY9B+b
X-Received: by 2002:a05:7022:a87:b0:11d:f441:6c9b with SMTP id a92af1059eb24-11f354974ccmr13891943c88.22.1765951017155;
        Tue, 16 Dec 2025 21:56:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE86JKR3HSRG+wrsvzfypzUySpyzBqWIZI2zF8hSLZq63HINvcPRtYlCrkAwESq77a4fBMKDg==
X-Received: by 2002:a05:7022:a87:b0:11d:f441:6c9b with SMTP id a92af1059eb24-11f354974ccmr13891920c88.22.1765951016588;
        Tue, 16 Dec 2025 21:56:56 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e30497fsm60166484c88.15.2025.12.16.21.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 21:56:56 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] soc: qcom: pmic_glink: Add support for battery management running on SOCCP
Date: Tue, 16 Dec 2025 21:56:53 -0800
Message-Id: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA0NSBTYWx0ZWRfX0Eg0lObAt7nb
 rgoxtP5esT1voFfGPv/dqnCW2Lsw5xTZ9caJ7VWwhH2rDlC1Jp1j5VbgL96fGJyaEYYKKcRoZnc
 LeiQ+/cLLleUDiMYQX28Ix6SORhM9sI8PMoY1I+F6sxorpOOOLjSH8etFy9n9WYHAMbR0AY9Lk9
 72XcYC3eFvQmn8KQ6bSepxaYw5TvmCxwTufWbH9vRMgIxSGfYICI1Ar8OuC/g/Z6391nmEws378
 gmn6f111An9w9FTz8pXwBvKrykv5+fdS8q9UkLNWt0Apr9GxG0+Uw7v4ZNvpdl7P/q6y0AbKgXv
 pUcdr5dgQIFmMIeR9t543B3ka7oBu8Hwkxncg1JSS4CO7bdAE/Ete+F+cm3aZOcM16mD+Si1XlB
 BgT2G0tqxRqnIdG3IET37fbRmhFnTg==
X-Proofpoint-ORIG-GUID: DnoEyQ1LM-yFMwP0-WrRbhNPaN-f34gp
X-Authority-Analysis: v=2.4 cv=CtOys34D c=1 sm=1 tr=0 ts=6942462a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=qMsUIMY-mLJ0Ph_xJfoA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: DnoEyQ1LM-yFMwP0-WrRbhNPaN-f34gp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170045

System On Chip Control Processor (SOCCP) is a subsystem that can have
battery management firmware running on it to support Type-C/PD and
battery charging. Add support for devices, such as Kaanpali and Glymur, 
which are running battery management on SOCCP.

Changes since v2:
  - Updated bindings dependencies
  - Removed qcom,glymur-pmic-glink compatible string from pmic_glink driver list
  - Link: https://lore.kernel.org/all/20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com/
Changes since V1:
  - Corrected bindings dependencies 
  - Renamed pmic_glink_data variables
  - Dropped "soc: qcom: pmic_glink: Add support for SOCCP remoteproc channels"
    since it was applied from its original series: https://lore.kernel.org/all/176157405464.8818.5887965202916918883.b4-ty@kernel.org/
  - Link: https://lore.kernel.org/all/20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com/

Anjelique Melendez (2):
  dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur
    compatibles
  soc: qcom: pmic_glink: Add charger PDR service path and service name
    to client data

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |  8 +++
 drivers/soc/qcom/pmic_glink.c                 | 65 ++++++++++++-------
 2 files changed, 49 insertions(+), 24 deletions(-)

-- 
2.34.1


