Return-Path: <devicetree+bounces-220938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C4B9C88B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:25:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E34E016E6EA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2C929B8E5;
	Wed, 24 Sep 2025 23:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B0HdAZPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC5F25484D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756303; cv=none; b=Vy7bhwRTbHEfMtmODssKpeoqqxb8mFm1ri+GdEHP91VB47iUts/qrTg0lNFjIAXZodp3J2oS/s2jqeMysuVEw7u6xksRzGde0FYoS7IncCitpk2FcsmazY7/Rm5FcYViu05ScVfT1z/6GXwK2iTq0V78wcPHaIds1ADKgFANDho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756303; c=relaxed/simple;
	bh=MI+oDiu00bDNElmLAuaGTsvYSs8RidGNhGOUz5lnDpg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Zgs1YXa14Rp4BJ9pXuJheu76wlzOtCkqWgi91ch0MmuO8EZuI/dkhBqQoK5QocePlChzr96i7DS6PM0cTn00ZxX/7JTU0KuFkqSf2dzFsi1xuFDuZ8iPwu5PIr7o1Cw/bbxa5qm+L4tdKP5UDHSqT8tSD144HMDTlwFJ2M1VxSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B0HdAZPv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD2k2U017420
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8KdGeu5K7BBKtWTMDnBNdL
	ma1q5nCzSjmalU54sb2TE=; b=B0HdAZPvF/Z5kAyXztGCljpaiJ4SBiLgx7wtK6
	J2LQe4auvvjQlrN094ojwY++N0kuNd5C7O1FnfX4NtpUOOqSMuNfMYe/ADQJbkNS
	DMVKfSxrbyYzp9kn6g13RgT2D1F0Rn15tlJVbnY9xg93n8EGzTQE6P2P689+UYio
	Mq82MVnngEjezaHprv0TzsVEtSjxz36dleZWVS8Sm+DSr4PiSuznqe0SlgI8qTZ8
	T/3CgLLGH+fbuBaxj1jotklq6iUYcPywbyb5ml3H1Lxm5DTFlMpGVonto67PpLhW
	p5bs9UsOHcqrlp47M5u3Tar4qyIVcdBxXpNrZmZjdj683EnQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjybw8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2445806b18aso2985725ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:25:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756300; x=1759361100;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8KdGeu5K7BBKtWTMDnBNdLma1q5nCzSjmalU54sb2TE=;
        b=AELqPvi6XqvitqyZ5WT8HqV/pYjTC8Xv3r2mNwe8k4iDti1ECG0YnZvVPV7emoY4XY
         VzSHt0mozfcZDxXUVNURMTYQZs7dolZmcBk1IY4+oTMui6WHNeHn/c0Zd0jwusGBbBHt
         7lfVlRtDu32z3ynQIAZRpV8O1EQSRRmpeY3mNo57d/tf/VzoXb83xiL7sw6TT+AGCH7f
         lOrqa5zGu0zT5tp7gcaCMhUDY5QQemcYCJ//g1/S0nJUxMMPrgj5bip19nELQIVVK8PJ
         V2OI3XvQC54a7iJRYBsxtawUw9wcOn60kRaIPogOs7rqnqdp0FdUksr7hM6Y5x0WC6q6
         UAuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjj05TSnxouUfGNbSI0NVbkmoJrQbGjtvZKvQ2GBoaESmlSkWaA1RmvZ1IhjKAu1T2SIRX/s+7suiR@vger.kernel.org
X-Gm-Message-State: AOJu0YwVe5z06y/i/Vz5YIIJMr6CV7dY47JXUGFFWFlSN3q62TlROhzu
	uGY0vbzyPwBZ3GTuihcS+NstB9wu45Rm4qzCn6NytBEgT6Jm7HGQwWbniGjXz1+0f4iPFokLkqW
	9WoMDacNJeeZdG4YdbXtQ5SXupxUQenrh5SJLLGfzLzUDQ1zdBFaHCpvrrwW5fNue8lnUGGg2p/
	w=
X-Gm-Gg: ASbGnctH9yrPJ/bo44lMe6OayZOjaP8hOIDYFvULm8+mMV4EeZL4X/YoS5mCI4jIo6P
	ZvTkeDpRl8UaBKTVL7QUJxx+uC4nRwDF+4QxXE639sbnG7p9Hx2FHqNSNBz42f2f97S8SOe6dz2
	BJX4FfgmaK3g8GqLKfcbVXBlzdGIg0cKn8tH1FfBubwH3dTQEE4njXtEpyMtnP2XzC74BbLR05Y
	jwFANwxdUqlkFAiSnunRUr2qIv0c1qn+34IWWiXb8pOYXStEUAqIzRw2pRSZqJlnjmqvR+1PgnM
	sRaMgLyIjd9HQo4hkOn7cAPDytUOgCzCOUplekPgl7JU2xNFYRyFZ8DpacPOr5WcKc+i8InOck+
	VIMN+1Zb2+ypzVqs=
X-Received: by 2002:a17:902:f785:b0:274:6d95:99d2 with SMTP id d9443c01a7336-27ed4a2d5d2mr14642965ad.39.1758756300425;
        Wed, 24 Sep 2025 16:25:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECljeDSgjgvr7BJ7mu+OJ5KGFzardlicdMlfpmJ1vC8BfK87jqUZ9dNR3gYgBaoz3oAFyl4Q==
X-Received: by 2002:a17:902:f785:b0:274:6d95:99d2 with SMTP id d9443c01a7336-27ed4a2d5d2mr14642795ad.39.1758756299989;
        Wed, 24 Sep 2025 16:24:59 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed68821ebsm3981745ad.84.2025.09.24.16.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:24:59 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] soc: qcom: llcc: Add LLCC support for the Kaanapali
 platform
Date: Wed, 24 Sep 2025 16:24:53 -0700
Message-Id: <20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMV91GgC/x3MQQrCQAxA0auUrA1MKlLqVcRFMsY2WMeSlFIov
 bujywefv0OomwZcmx1cVwv7lAo6NZBHLoOiPaqhTe0l9dThq8w4TTljz2eWREJKAjWfXZ+2/Ve
 3e7VwKIpzyeNv8OZY1OE4vomylqtzAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756298; l=758;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=MI+oDiu00bDNElmLAuaGTsvYSs8RidGNhGOUz5lnDpg=;
 b=gMu8aOhdUWBv94p02qg25ig7CGC8YJqSufna5b7KLJXx105wkytIqbMjLMZ9rMqm5Oj9K1gnF
 CwKn6Cgc578A1j15YDsVPkAAeLT7ANCpD4bzncJqVrq5pHAbQl5SmUt
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: kQgPvlFd0ceJcIY41Zn18Bi6xF26WOia
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXziSLQFHRYhNk
 z3EXhJYT0fcGvYS9MVlX9LaeNHRFaaySTA+D4svEhgQSnJBAQIDgxpV+VKxwHWcf2LLmGurjLk2
 7SH4CRYyfaR9qMBa5ME6OhPqZHC06Tlp0ScxpQCz+6CVtOTnyNuQP7GJrHCXv+g8tOPfXaZect7
 XV9SdVZXpfOdvPWdGZ5jaa2OwF0geXKVjyjocnCZDIupdlJ5pynhNLRb2hdGnhsTJNYDa98enyM
 I7nf+jHor+f6xnVWZvqa0kZXlhhOKEZ07eCqpoWuweDcW7k+IE7XotgNpUJeQXr4VXH4Om47Fhc
 QNgd+aOm2dTqX0BFH2UXQIu+yE/lJSMmZWJc9WEQzxZE5LiGhFoe+gNzpjNj7CI2BV7urR3drAk
 8nc7Z2Vf
X-Proofpoint-GUID: kQgPvlFd0ceJcIY41Zn18Bi6xF26WOia
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d47dcd cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5i2LFDMG1PHuSPdXgAMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

The Kaanapali platform has LLCC(Last Level Cache Controller) as the system
cache controller. Add binding and configuration to support this.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jingyi Wang (2):
      dt-bindings: cache: qcom,llcc: Document the Kaanapali LLCC
      soc: qcom: llcc-qcom: Add support for Kaanapali

 .../devicetree/bindings/cache/qcom,llcc.yaml       |   2 +
 drivers/soc/qcom/llcc-qcom.c                       | 373 +++++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h                 |   7 +
 3 files changed, 382 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-llcc-9a3ab01b1e1b

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


