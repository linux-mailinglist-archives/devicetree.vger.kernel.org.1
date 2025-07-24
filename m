Return-Path: <devicetree+bounces-199508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A007B10F40
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 17:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23A8E3ACBA3
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D622EA724;
	Thu, 24 Jul 2025 15:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mea3kXsu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937F02D0C91
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753372623; cv=none; b=EOODO1Sc0NpPTuFzHcli4Hgh30R8B/zF4qwmgUxsO0vIbLLRqcR72/yMEAb5MC3ewnOQByZJqhKEwsGCj+IZTkZ6+488IM/fmKjH2wvNMmIw/FoHzaBAqaGOouJfDvipB459slINI8TmqQkmzy9fS5sM74dL0L7MV6qnpWDwMNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753372623; c=relaxed/simple;
	bh=QUF20TEbvg5FnS+B3mFsBfe9lLi8WAEgPd7pDJJeuP8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZoJuDzCpZDX16NhZu23GrtF8y+uGUjNvk1CVvGzBC/5I8vmVZ91E8+6ygfe1AtfbFq2zQ05LCj4pvnvhCIkvFSzPpSRDBoQAq1+XmsGeEZKkjP66Px9s4PjCbqwgfYyUxM8GXGjJ4knpP4OTEx4FHwY4NW1DXAXIgNu5cPbpbLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mea3kXsu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OA8kcg010594
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Qr7A9PQNxrHiZR7GDwUr0PvXzP9qInDp+hj
	8sDBe6cw=; b=mea3kXsuOJ/v1eN4aiSwNqkB7cNhLX/i9iN2M6UtAq0Gs0xvxKb
	znb/FZoX3dSW7EIBmhM0E/EOC8iPJRSnod33hKj1mR6qX1Vp9ShTXqqxn1Xn54F0
	Kv/24q8WGoDEDZZoCeSWkaj4ZuJua+8VoxKuIdazkjJJSus5uBQrOcNvG5MD7Bry
	QQeyI1Mp+r0uVRgVAlK4Gy5MkIgZeMqTvOroJCDJTOO8D7XKOtXc8kX2pRxhUL1l
	v+KSxWT2OdUbGrV5dVXU9vawXM0pqExu8xj0kJPP4XXRqe5KuqtUqeCzaLQLx6Xv
	A1kQZpyi+LtJUH3cOQCGSnCr1OlWv2jJhlg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6wagmu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:56:59 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31f4a9f67cso1593256a12.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:56:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753372619; x=1753977419;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qr7A9PQNxrHiZR7GDwUr0PvXzP9qInDp+hj8sDBe6cw=;
        b=MlzkvyVzbyaKOwIwtjN+wj4bNRDNJfnAu8NZo9AVv7DCJ0HQPwXFb+/022esOT3ad1
         rruUXAyD7KcO0CAd1ffzkUk7G7ACfFWhJrwbHy+veo8F7ebqYbrZZ8FcG+WISZH7Fijg
         sjIlKkUFDdLRazn+W08s1vFBDPuxL8U2leu3iSTfA+e6dK24bQDDKeZ4nfMIscPyREpf
         cOzbe9r+DEu07Y/X6gpDuUnv1LGLiJ1F9LVBpPrAJ/7zDyz7sr5IrQcw7fv/iNwGvkyC
         8uFgWVEhwHhDeJytuXIbeYc3Nn1fHmDX0vhoP321q6IpoQJegU/WSPOqt3py3Xpb1KT6
         oH3w==
X-Forwarded-Encrypted: i=1; AJvYcCUtK77nKGXXAQn1oEc6+8kDg0OizqNJ39O+fK/gWCSnj16lkg0NLgvKtPudWWTVLBEUtdM6Was/X0mC@vger.kernel.org
X-Gm-Message-State: AOJu0YzVOqxdWLtKxut3vAmatZvLLLkFQ3WImQ25zKJHhz3pXmytrClr
	zz8cv0F3I248wZI5iz5+87y7MRwbv+qm78D1sZSPFFeouqqiAc7/KYNJ/GbJf1RbKMzzmuf8Rei
	MAby+9GMvJ6Zmynzod8lxbbcnkflDgp1ndz0iCr1cUkvToers6Z92UbfY2H0ksDJ+
X-Gm-Gg: ASbGncuVPtBmsMabqPaRVHbSfF9UkuHGsVpMqWzJH9aTrd335M5kmugTDNz6uG20xiz
	A1GWXCxB/5lL4qoHhKqkeBYrSLLx4bKrkUIdXk6HOSFrM9UU+g7YAM83PwbMXD/mqk2MqRO/y+E
	00vPJ2FCvv6nP5GnEztM6ePlQQYxaYQVOvf0YCSMhFg+1gYilzcDxrrMv1n+RQPgkEKbnL1uEJ5
	vwBdv1LLAk/4t4uSRfGbiffKNBavnWUwrQy7bcNXKMcMsybXia81RGEZtTHwBgmN3WGR4b1N+UC
	R3hGmS8ta0m62x3eZnguySQnBHH7/d7PvMjKjBLNv/SAHhLbMzjW8b9hYK80lcNM9Khm3nP1OBj
	0
X-Received: by 2002:a05:6a20:12c6:b0:238:e4d8:2bba with SMTP id adf61e73a8af0-23d4913b9d8mr13041367637.35.1753372618776;
        Thu, 24 Jul 2025 08:56:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGD1FmFQQ9CRMiZyxPjL9yZQTW9Zc1Ud29qAqsHHY5goVdN+TXdgLfi+rYDIe45NT/+izd+vA==
X-Received: by 2002:a05:6a20:12c6:b0:238:e4d8:2bba with SMTP id adf61e73a8af0-23d4913b9d8mr13041318637.35.1753372618328;
        Thu, 24 Jul 2025 08:56:58 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-761b05e8498sm1988516b3a.98.2025.07.24.08.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 08:56:58 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v3 0/2] Enable audio on qcs9075-evk board
Date: Thu, 24 Jul 2025 21:26:30 +0530
Message-Id: <20250724155632.236675-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=688257cb cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=YkB-U3mbqUf8DnNMcaUA:9 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEyMSBTYWx0ZWRfXyE3ohKlPiBAF
 /mgqKmV+w0UUHSBQO5GyEwUSNTry1md63NJivY8trfE+m7c8OO3+HngS+T12xERJZgZ+LqvN+PU
 2PAr9+heAeoNbqVTTcwXuWWfK82EP2fV5xTH4jUoqDo1vUEE5NsPJlD1MJaPrVA8mb+mNiCOaJU
 l8r5CggtgH40luieGdeYfJ2Wtw3o4vL8IBLLeCfIXhTcrFWeLzgf8HLd8OcnOfsd9SE8xKdg+P5
 +2T4JlF7ZcFZ0HsVev4SZ5t7A4kLY8mc3jZgb49e6k7z91EIB599DSy1J4gW4DrrCJg2Jls+y0h
 Ip2pUlD+9opjVscn51j76KqWV7I8mYfAzI5TOvZzePxYVK3yyeJFNT2XqCRe0pvLijpb/a7kpkI
 I0DVJAICCIjryAVI0N3UREQyxJMnHY9NTLDLr/451oQaa70KoJ90hz9wiBr2HLpzGDeMB7PG
X-Proofpoint-ORIG-GUID: ABigbIUucmb6GY14nEa1cmzSnRcDHJ6T
X-Proofpoint-GUID: ABigbIUucmb6GY14nEa1cmzSnRcDHJ6T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=917 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240121

Enable audio support on qcs9075-evk board.

Introduce HS (High-Speed) MI2S pin control support.
The I2S max98357a speaker amplifier is connected via HS0 and I2S
microphones utilize the HS2 interface.

DT-Binding link for sound compatible:
https://lore.kernel.org/linux-sound/20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com/

---
This patch series depends on patch series:
https://lore.kernel.org/linux-arm-msm/20250530092850.631831-1-quic_wasimn@quicinc.com/
---

changes in [v3]:
	- Updated link-name from HS0 MI2S to HS1 MI2S and sorted nodes in order.
	- Link to V2 : https://lore.kernel.org/linux-arm-msm/20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v2]:
	- Updated commit message as suggested by Dmitry Baryshkov.
	- Link to V1 : https://lore.kernel.org/linux-arm-msm/20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com/

Mohammad Rafi Shaik (2):
  arm64: dts: qcom: sa8775p: Add gpr node
  arm64: dts: qcom: qcs9075-evk: Add sound card

 .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 54 +++++++++++++++++++
 2 files changed, 106 insertions(+)


base-commit: a933d3dc1968fcfb0ab72879ec304b1971ed1b9a
prerequisite-patch-id: 853eaf437b81f6fa9bd6d36e6ed5350acaf73017
prerequisite-patch-id: 6d9fd3e0257f120cff342c287774454aad2be2e8
prerequisite-patch-id: 736cbcd47d5e7cfcc53fcaa7da920eac757ce487
prerequisite-patch-id: 4eddce6daeaa125f14380586c759f8cb8997c601
prerequisite-patch-id: baac180e8715b5cf2922f79346440d92569704f6
prerequisite-patch-id: 65730290d31f18e66e2ba0dfdeb1844d7442c272
-- 
2.34.1


