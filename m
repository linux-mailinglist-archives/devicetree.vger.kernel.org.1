Return-Path: <devicetree+bounces-213535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D86B45A6C
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 16:28:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31FBF1CC5224
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4FA3370582;
	Fri,  5 Sep 2025 14:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="apFBEYuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F6536CDFC
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 14:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757082430; cv=none; b=mq116xYn0Ul2GLCZDBCqtJIZW6oxdEc7Tw1ss5OJW6p4AeJNhRMeiP4KKm9yqEzMtyvPV9zVxV8zyHyttdsiM0HimgAEM9LnhJ/Z5GVk2Hoh8bpaWyjApcC4jNNaQqblDYVHCw7h7Dik9XTYjXkLuABTKl78PYxAPLDU0EJslmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757082430; c=relaxed/simple;
	bh=COONmJayji3/apDDC0fohQM7ae7ePr8nTLeg4wuARHo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GKkxfUYGBKHK/3WrzkYiE7MqCylW9/ebOe1MHqaeVezQ573mF5cP8kbYpj5jA0Qpl8PZ94KY0ptHIr2ss/rR/Y0chAfgAVeNcmKBNujY7YtakYSvzTSfxrifYpf0ptq0p3oYGGJb9OViLObksEQA00JFvuMn3lDr3faPR7C86hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=apFBEYuI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5856hngM022174
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 14:27:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=/ckEIR0Lh7M8rafeQHMKQZUw5tTBw3CzxgX
	B0MrQTyo=; b=apFBEYuIMu3qKJ9pwCYwLKJU9N3n78Q0fuP+40Kq72lbEnFygN2
	mf2OrCFIzhd8jM/vlSurLDJJyEOvrGxp0ft8ztrAO5v0a9OJnzGdMzsEHpMu5Rd3
	frvg4pG9bYIGiSpPRoSJmPtPQ6OAXGR6UKyIQ4k6hCFOa9S9z+bz9nu2wkeEFN7b
	dGthv6sK3rbJKqs3yz8DLZ8xCAOMuBt8OS3Rvrmp/7UKGTsjCh40D3ye98PoT6iw
	ZajIi9hdSvyRZbqEtXJBVxQfj7r/baum0lHQqnMYdX85MWCVV8oUU3cNYD7WaEow
	C8MGF0SoCxaUHcJ316YwxO3u39Qkhhuk2RQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk9b8ep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 14:27:08 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7724877cd7cso2494401b3a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 07:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082428; x=1757687228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ckEIR0Lh7M8rafeQHMKQZUw5tTBw3CzxgXB0MrQTyo=;
        b=p8JiWDY+WWxWdO4Qq5DZoMsDDkPq4ruHN/75qOo0EQgVw42x1ny9376eOWiAizL3GH
         lY4YORUbt+EksHSaqqggUn94Q4cfQ0/Ku+vdeH/tPntpJbPQcJHX8d4bTe3/QbODmMJ2
         p215sS5Pnx+2MzLapsQ4UwhAfZ6ubM5aTmZ/DpcP8udlqE9WN8PI6MBHsfNK0SXRhdLH
         5gAaQ0Q3pnJHyR3C3EhZ3Fz2aRqga0JJjk8Bhk3LDCEz2Vx9mCbM0qWxgs82+adoITVD
         W5CgoVSH8a5ZH9nuZA9lPNXp79wGN/yl64OzNGKKM2Zttk84jcNWgZBITzkh5ZsoRx1M
         9vjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMSyr5lM9NFsDO67dRtDuewecJ+yQ4p2qiyNu3jS9hksMCPo6m874Fb+EsStVI0sHTaH7r4TTMqhp9@vger.kernel.org
X-Gm-Message-State: AOJu0YzI12/OPf56r8i25PcLyubqKVkxHWfxZjdYp3XqqQva9lqW88Va
	zRSi/YdFdWwq20cDuG+j9CJbxugiONS0HRX3EMsOFnvFlnPyCYnx1cjwjMDSF2azNMOHiz2GOyR
	RXmCurhfhER9kHz582uqdBR+EtT51oGWn4q2nq7B7SNVBhNjqbRvRC8PyYYPWA5+D
X-Gm-Gg: ASbGnctVcm+VFO6fKvOEYqgafLwxzuyILzrE7QtS2Mvp3MP6Ph9mqYBwneMDdkN83so
	wGSEMftZxD/50uEKe66dzjtHpX4ysIIKm2SqFszqINvx8TzRZlY7MHn6E6BimVh77f2zChxCjxo
	sOfGKSTQGTZ/ClBrDQIqvedj8wQQ0lBCIzp0CRVYv+Ka58KUyXV4xTK4cM6FyI1cctOu+SvWIXH
	EDqQWVHgqc5xfT6fMQqHo3yN3/GGLjH+TW75GJIPTpU1m48sFkRJJIfwOJ6+zssh42huHG56hWD
	aCzuawQtgrJrPZKhyRa2aCOEs9gfSpcJmKz0oI4h7P4KxUaPbYmomOFu0uA4WXwpIuOxmFqECIU
	N
X-Received: by 2002:a05:6a00:4b56:b0:772:2c15:230e with SMTP id d2e1a72fcca58-7723e21e99fmr30451158b3a.6.1757082427518;
        Fri, 05 Sep 2025 07:27:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMpYEFhjfDJgMkmgqtvzTOSg19rOBoG+ruM9W/bufKK65tLBiqApGfqLO9jTLPptM39ajKow==
X-Received: by 2002:a05:6a00:4b56:b0:772:2c15:230e with SMTP id d2e1a72fcca58-7723e21e99fmr30451120b3a.6.1757082427002;
        Fri, 05 Sep 2025 07:27:07 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a26a601sm21930824b3a.3.2025.09.05.07.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:27:06 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
Subject: [PATCH v1 0/2] Add sound card support for QCS8300
Date: Fri,  5 Sep 2025 19:56:45 +0530
Message-Id: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LaH2ANsC7-Z1CTSwrWyGqFMWmESY6IQ3
X-Proofpoint-ORIG-GUID: LaH2ANsC7-Z1CTSwrWyGqFMWmESY6IQ3
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68baf33c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=3So_8DPhrXatR6NxOeYA:9 a=zgiPjhLxNE0A:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX2KunZfbtyTv7
 5fuPNh6PBMh1q/WQRJCBVONFnjv9yZNJB5uI6KBc+cSpJ8tCVQ2J6R8arRhWF04yK2eAEDrtTBs
 uHiE9baPAWgOex2IwY8LoTFuRXVxg8TkWWbP1dX7ANF3G0nNjfQBkpRetjEepztTmhUqoJPRSjt
 jsgx2RpajgebhFCvYID08iEBhf+aEowJ7EuwMeDyQ9BVDcb7omlwZZ/k0uq+LkZIBv1QbYKFmFH
 LxXiQjG3TIGXpJaaMjbMUlarcAterRoqKmtIDL3QQWsGwScQL482FJzyuArZoJD0z92Ska+fAGz
 nRvu473gHeAKya0lk+4JMT71OH2/uTPQ5eU/cqWb3P7GSLrHwjxH3Al5Ihou9GchjnUEFZ/sUtF
 g9ExSywv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

This patchset adds support for sound card on Qualcomm QCS8300 boards.

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,sm8250: Add QCS8300 sound card
  ASoC: qcom: sc8280xp: Add support for QCS8300

 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 sound/soc/qcom/sc8280xp.c                                | 1 +
 2 files changed, 2 insertions(+)


base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
-- 
2.34.1


