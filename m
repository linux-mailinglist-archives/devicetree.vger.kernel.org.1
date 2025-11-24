Return-Path: <devicetree+bounces-241622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE92FC80270
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:15:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B115B3A21B2
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE872FD1D3;
	Mon, 24 Nov 2025 11:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tr5M6zu1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ht/o5hRQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9772FC873
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982770; cv=none; b=eMcHYEfqnMVLRb+AWt9+gy0hZ/T8DEY9wIy49Bc68OQ6I85k/F5qCBkjkG7VxITPIESEFKnptJdSo2Rp2wkJii/l08mCuMdheWKrxVI66EUQIwvw5o30pnfccImh272vbKwFwEdrAyyUMtpQA79kZ+Na6CX2Hp1Omv84vROVr1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982770; c=relaxed/simple;
	bh=GXzOHUcu8jmVZSISxvrMjghCvNltj3MFWdbS2tT+y0c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YrXlBH8d5MxwZolGzF9sCObyDGg5y8x7if6uaOvQpLEzH93xH01Cze1JAlJ7LGW8har+98td2Hfj5EQC52X4k/EdVMgIkl9Kxt4XsGYeDf7o9ge6UeogRoGvn0Tqt36NGpF4zejNKi7WzJJ4iItcIcYvp/q7fhnviV4rEia5Df4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tr5M6zu1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ht/o5hRQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO80HNG1686794
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TXqbpIEBiec+YdCd2w7Tb/
	wyyfHy7fnw5FPr5MJIDlw=; b=Tr5M6zu1+RTGZczxCJO4GmMG1wEzJL1/NcgYGu
	5OzHOf1+stA/JUfwI8LQ3ALXKOrJiB+eP6NT9FENyO0lmthYvyUVekYGj0eXzuMD
	JwqoZsdEkz4IndBCCQ3Ag706mlOYFlsA0RvDxqqLGWwSf8zWstcz/yh5n4RyoSG6
	/MfsIxXj1eFi0C8dNivA55qh1EByVwKfPo2A73HsbJ1ou6HPF91xm/VcLa7J6y+t
	q+DeQlfL+N4eBsw+voKTanCP97fuTXwPjldZiQa58+DRm8jPomwlcivS7IW0aLeZ
	iL/kg0Mw4nUdvob0Zi+d5a6Wd8TkZlxAKKWuV7wKWPKGY3DQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099rv6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:47 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso3636211b3a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763982767; x=1764587567; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TXqbpIEBiec+YdCd2w7Tb/wyyfHy7fnw5FPr5MJIDlw=;
        b=ht/o5hRQOWteGeQIfeESSpNMe3H2iK3Y2wteStBCP+uaalbOBK7SeUizNx6j0UjNpY
         0uV15B4HSlQAAmf7RiHruaTDLW+mnVBDpgFKp47sf/soN+FKzj5Hc9M2J29lmibFU3kX
         ADOOaZR0yTEU7ysP1Yq0hOyumRD9NGgNJ6k3GSxUzDSwg4cwIWHvrRETe62bvNTp36It
         N6yBVQaPGs68zVlYpQzgVnzl2xxeG8kHnaVfI76nO4ViAE5lc2itofB1e33wrLuAnVN8
         LM9/o+WxAnHhtplXLjrxG5FVZJ73Z0OYdvgiLlWInoezPdqRa0zbqeDCiyLYzjZlS16t
         4ZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763982767; x=1764587567;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TXqbpIEBiec+YdCd2w7Tb/wyyfHy7fnw5FPr5MJIDlw=;
        b=d6HqxcfzlN5KezcYSNrytYHYTXZ7pZX6162P8UV584o9MxkK/6Gzn4RSb+5KuZdZhj
         QluIfEGE6R60C9LDltI7f579IXGKuwDu+GgsofIuKiP8eje16oJA3SoBWTdZpMtB+ZKB
         S11uy2oS46082jAEQkWdth/lwq5Xp+SFdMuDXggbY1n+2IHSGffS0i+HgZ4HWvpYBgzJ
         lyg+2jpndE2NLzFmKxQbmnDwKFPK+wXODipiSQsPwPc7uw6zQsId8qzQlwqcT+UM1iiT
         O3SwGHLz59LGmw78fqpep7pAiF2zeY34IjhMWVIh3kbIW+ahR1eXrmBN5ULoecE6ZzYw
         Zcng==
X-Forwarded-Encrypted: i=1; AJvYcCUrbo3cDMI6HUcnZntRhjJunnZNYsVGfFIoWrNbS8/QFLeGjsOzsOdm+o6ERa7+/cAjjpP22XKHW1mG@vger.kernel.org
X-Gm-Message-State: AOJu0YxWpsO6XnkfMFuMl46kidIb7VuJ7TyawPDlNu8YgufzkIkwVJzv
	FPagknQ9cZ3ZQ+Hxi2tkdfNU/HBFz2zNJUSo88mx2z48tjfezzxZfoQvHtkFNp7AR5NeuHoaUcr
	2wZsG+08islwm8E6Td88oAd5JAS3WyKPcxTWxKmw1CmUCE0w6nORibtDGk2q4JR4=
X-Gm-Gg: ASbGncsWLYjVbOrOklLHHFn7PJPfersFtuoySBZZxAmK7DCFbf3v+w3RisRFroUcD+l
	nueA1tUitShljw25KUF+kqyRiS7knTUazkqup2mh8HAHEQKx4EggY2KqjTLIsG/aEx2WnOSSSW3
	nGh4gLB+P7zaqtLR1FsAjrE5YuxQE3O7slz2qNThal/KnuFDpSl1TfY9+fECXE+3ITZ8wFKrsLZ
	ho6nhNF998rkrT/FxMYnXgpPZI7gZxoLUkQB4cozNwjU3SHll+wsRsgZCha8CovOPKYxq0R+qJ5
	fsvUxMAXx/R92B0LVPpFsKKwm+bf70wWSijWpLALWfnrUqLAI2XES6rl/QAi+RfzU8Q3DZUcCsL
	DmRDr2QcL7ZF7PRFsuv5QuWtMCfVFIxLmmxzGiTc=
X-Received: by 2002:a05:6a20:1592:b0:35f:68d:430e with SMTP id adf61e73a8af0-3614eb3a0c4mr11232902637.9.1763982767096;
        Mon, 24 Nov 2025 03:12:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5DBVr7Qie8oxPbSqRQlj+suGHKQHP5xAj9wdWg1PBGhhTWDP+uMNpEZrPc1J19opeuzRjvQ==
X-Received: by 2002:a05:6a20:1592:b0:35f:68d:430e with SMTP id adf61e73a8af0-3614eb3a0c4mr11232878637.9.1763982766546;
        Mon, 24 Nov 2025 03:12:46 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd7604de68bsm13133780a12.21.2025.11.24.03.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 03:12:46 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Subject: [PATCH 0/2] battery: Add SiLION battery technology
Date: Mon, 24 Nov 2025 16:42:39 +0530
Message-Id: <20251124-add_silion_battery-v1-0-3c86b70d2543@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKc9JGkC/x2MQQqAIBAAvxJ7TkhRwr4SIVtutRAVKlFIf086D
 sxMhkiBKUJXZQh0ceRjLyDrCqYV94UE+8KgGmWkVFqg9y7yVjQ3YkoUHmFGjbbVVhtjoYRnoJn
 vf9oP7/sBcjruwGQAAAA=
X-Change-ID: 20251124-add_silion_battery-5b4a97494559
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kamal.wadhwa@oss.qualcomm.com,
        fenglin.wu@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763982763; l=963;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=GXzOHUcu8jmVZSISxvrMjghCvNltj3MFWdbS2tT+y0c=;
 b=zZey+HF7diss5s7qGKahFW6LJr8dmboY4qGMBwt6UL/jJg/IWASFwGSCzIMqYauN0VMAVbx3n
 kMzXkD2xlJSDLycEhWZs2JKYrooBKG0lUwsrlm7XWQVV2rs4b8FftV1
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-ORIG-GUID: rdZhZ_d_KF3APw865_NrBZKqOlkomJm_
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=69243daf cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Tmu3GerIYFeC-vN7JBYA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5OCBTYWx0ZWRfX+Ho3W1IuLLYp
 H5sRiGWhsqOI5ZSA32J7WKOhIrtzDz6wn7e9N3eCw1EMiiTNOSG4bRblsXvUw2kXETc+1tFuZda
 EE23XxNG9mPnMmAPpDdvLczXBXOF/KsMGKTSCqwIgd4VSBxH2xI6OKKzmg8WD+ED3ICxUKsdhkW
 L9cAkPqhH07RS+Ga+BJEB0JoEge0S/QfL9NVUeVXs3ODuzCXaR2wonUB9jwg6pXLpQnHJNIEuoP
 K6GN2pyuvVLr17nzc9sdG2F/GDgU1wc9OseLkXaSOiRj1JcObuONe6z4ayJx86yRnQbZoAJVrb5
 SLvYugv998fhR1jyjFTYcjbP06tqvp9Mh8WRdKaMd4+WdFbn9bOr9lbhkb1kkirLCmCJZltjTIZ
 TDoaTvZL1hZEqMEaWVXkGasOWTGMYA==
X-Proofpoint-GUID: rdZhZ_d_KF3APw865_NrBZKqOlkomJm_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240098

This patch series updates the battery dt-bindings and
driver to add support for SiLION battery technology.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
Rakesh Kota (2):
      dt-bindings: battery: Add SiLION battery bindings technology
      power: supply: core: Add SiLION battery technology

 Documentation/ABI/testing/sysfs-class-power                 | 2 +-
 Documentation/devicetree/bindings/power/supply/battery.yaml | 1 +
 drivers/power/supply/power_supply_core.c                    | 2 ++
 drivers/power/supply/power_supply_sysfs.c                   | 1 +
 drivers/power/supply/test_power.c                           | 3 ++-
 include/linux/power_supply.h                                | 1 +
 6 files changed, 8 insertions(+), 2 deletions(-)
---
base-commit: d724c6f85e80a23ed46b7ebc6e38b527c09d64f5
change-id: 20251124-add_silion_battery-5b4a97494559

Best regards,
-- 
Rakesh Kota <rakesh.kota@oss.qualcomm.com>


