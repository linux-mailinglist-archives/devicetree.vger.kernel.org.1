Return-Path: <devicetree+bounces-211404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 605FBB3EEED
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DD174E1471
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81061DBB13;
	Mon,  1 Sep 2025 19:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XXAdwQ4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1891E5213
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756244; cv=none; b=EfdYJ532zBacAQoG8EJzo/XBO+JfIS5YQAuJ7RcnEUKw3iuq1WoPCX/KfkP70Y6jQeFLZsTdTE9bOJFWOrwpb30Wuq4AiOFI0w4c6EEH0jNCxIWCabmjMN4T2mWMRx3NLlwzQsBxZro1QIs06JSwotcJpl4SO528g4dUgZ31iIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756244; c=relaxed/simple;
	bh=bNozMk+UbMdf0ssHdcWg0zCJ6HDPoJ+No/5V1g/m1to=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UNDh6MVgr2ak/4A7JMBy6YZz2QQ4nkjNx1M53S/Wpnt1wXjLG5OpOJ57tvP/L5PvhX3PwXZlfL2Bd+YiN//ryl/4xlowq3XoOdxZ/kgr3LttjNJr/bxMq56Kiy0SjMMmhZoCe6Dg1LP5ryDoI8RC7tvjrAQ5GHxK/H+R0kLYzOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XXAdwQ4O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B48Dr007131
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=w3XV8QBS09K8rQoBNwhaUktzkD6jagB21OB
	vcD6sKQc=; b=XXAdwQ4OrL9ZfUxatSNy/05sk+ga3U6j3xkdyq0TtzRxyF7Jdkv
	9hnRricObceT6ZeJSmr6XuFUrbXpcRCBdKap/c5u1Qg7FJ1b36DDEravHiAF9qk+
	ZHxFSqI7c1Lrgawz+4qxGRBi6Z/Te6RM54kz8cov8/i1IWTQ9uTTt4U5deX85roG
	yiO2QlGKxJepoPdLWrPuuLnWDdOnQwgBv78lU58XjKk+5U9u5I5UudC7Pwpso3wb
	0qmqlZio1yABW59MwdWKLjz3wYsX33hASwz7t8tDVVf7oabKeh+TDzsgG9lPNEW8
	vuLHmCOm0VXSLNord+oqykPqrXgFvk+NXlg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8whxc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2f9e8dca6so103875481cf.3
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756241; x=1757361041;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w3XV8QBS09K8rQoBNwhaUktzkD6jagB21OBvcD6sKQc=;
        b=CTm78CgWbOnfNwvAs8TX4gUwDh4iS3vc32+ZUdZKjvsyoyDSIheDD6IYJ9pC79Dk42
         n+qmaugY0ObeYy0MGFYtw3PByOlRaGCoXsCsfx1lG1uhjCX18tueIuZNFDNb9lpNC2zs
         5xeWBG4dMnoHRCkQevK56wdLv0pmdcho7+X2ZxCXQ8vSU8b27R7I8HLIZqz9fSc+w5dE
         SsF2TBMDvUx/ZURNkBr52LiaRYtJSpWyu8x75HSvJixPbNDeVejiCgQl5U/hc4SuxMbv
         M2gCCUstPEH/Jnf4n2AgunYAUtOrTAK3UHILcj8ByAAwoIxG+zGI8jLDIglGMw0PJNkp
         HkyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3kLTnrse2QDQ8Vey53N/qX8gHRLx7leX6wIHZK0goEwdqoV+xSGHd2BLrbPWrWFW9V1q+3oApjBkx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl9mtAQ2CRFyNAp9wFJXqdUUdEC0hm6A0pCkwZf+L4ZzCZWxpg
	NIZ5MkK7bxGJ1LyZGkTD8khGgFBIfmwWC9vYser2TqMUmJiMGWBcEblADgpKbYWY6ENIJ12dYFv
	3vI8Fxz+tN7EcYYvWWh3n+IKzPOTivfFfFSWoNdhGiOBiKrNAF0RZYHOz1IwOjwyK
X-Gm-Gg: ASbGncv2tkeKa8xmsEPkA4FFmaUGpRbsBuHjEcyuMo/3l4RN/S0h/wqLKCUdViNemmW
	+PkAkLNDtwv/ARRobs3DbuLHMtIEDfX9lJtHnw2G83aU79dCiakIWNVw1ntuq9+oIWFP1QPOO6F
	gAEsbMsxjoAkq1lBOeFLIFKpKDHFhtTi4s4DXOwHi9v1J/7ZUCKdeVYsdgJ731+J621m2jnGffm
	GfYOg4wIxq6FfIQ9q/wdFXBpPjg4e0wRoiOl9wugifJElmUEZ/7+j8GkDiy57HW5JgN/jdlclgN
	mLZC4UZnUUlA4ywDABV7x8vZr7nURAYzfelQbigskOytF5PIDtSv7w==
X-Received: by 2002:a05:622a:1441:b0:4b3:755:3c82 with SMTP id d75a77b69052e-4b31db6a646mr96708941cf.49.1756756240832;
        Mon, 01 Sep 2025 12:50:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNqO+011I8C+a+NWKi0w13L3lHbVjjPv/XfgLwhTgpHoDzYVyuOZp/gX7zx+H3LGRPzX7dLQ==
X-Received: by 2002:a05:622a:1441:b0:4b3:755:3c82 with SMTP id d75a77b69052e-4b31db6a646mr96708691cf.49.1756756240281;
        Mon, 01 Sep 2025 12:50:40 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:39 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 0/7] soundwire: qcom: add support for v3.1.0 controller
Date: Mon,  1 Sep 2025 20:50:30 +0100
Message-ID: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Y3tDfKuTUiRRwoa8hvyV6nxdaoLt0X76
X-Proofpoint-ORIG-GUID: Y3tDfKuTUiRRwoa8hvyV6nxdaoLt0X76
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b5f912 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=plMaQY1jPcDNhxvH7e0A:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX+VfE7ileLa3r
 fd9X9gMKoHDAJZzFJ+oap81wi6xE+s6Uz6MuuOYSrUXS+Fy+pUTatg0MdaXBW7PORbQv5t7BMR0
 FaE7varqib6lIU9j2G8RzfYgi+D7mMS8FtEyQJqA9gyTecM1Mi39N4fqTcrYH2GtckLWpOAU8Vq
 OCcF2EbEU/1rCgE1bzlq3Sy+Y3LDEfHK2VBBjBhg5N7xyJxsiaa9fuOpJb21Jkag3z1EN9lJ8GN
 02vsqD+IGYbR5SeeH9zU3jSxMnIOU1KP8VD95vtaH9O1xybfh69wMWDShBptk5am6UhJ6sfrk8W
 to5XLSU5TcFPH9PeWqwkrVx3svafjiOV3M+ZjMObnaWmuHI9cWADjilbs7j/XQ1AqoCh47KpFOP
 b7WEVsib
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

This patch series adds support for Qualcomm Soundwire Controller
version v3.1.0.
As part for adding this support, a new macro of_property_read_u8_index()
is added so that we can remove the qcom,din-ports and qcom,dout-ports.
As v3.1.0 supports more than 17 soundwire ports. Also due to change in
the register offsets, new entries are added to the variant data.

Tested this patchset on X14s and Glymur reference platform.

Thanks,
Srini

Srinivas Kandagatla (7):
  of: base: Add of_property_read_u8_index
  soundwire: qcom: remove unused rd_fifo_depth
  dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
  soundwire: qcom: deprecate qcom,din/out-ports
  soundwire: qcom: prepare for v3.x
  dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
  soundwire: qcom: adding support for v3.1.0

 .../bindings/soundwire/qcom,soundwire.yaml    |   8 +-
 drivers/of/property.c                         |  33 +++
 drivers/soundwire/qcom.c                      | 253 +++++++++++-------
 include/linux/of.h                            |   9 +
 4 files changed, 197 insertions(+), 106 deletions(-)

-- 
2.50.0


