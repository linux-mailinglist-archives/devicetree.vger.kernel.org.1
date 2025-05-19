Return-Path: <devicetree+bounces-178340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D02ABB743
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A838716579B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77533266EF1;
	Mon, 19 May 2025 08:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L5LGzeTu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E732A72639
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643598; cv=none; b=Bb8FijusJwnTINYAVtH0BdxHMGRHP+0M3CEgtIy1AxiJ+pPvHAWpNtAmhqt58P9lt4Yb+YJw9ywLVoKmo262d8XQKFaqPBQ9iPoGgNtXIypIc9M02weN7w3BFOTg7DPvrM8ERDBWkjDGN5xcr251IGTD1uWZWwxOSSNS0objvFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643598; c=relaxed/simple;
	bh=SJyYt+2SrMmVPKFZbwfaLb4AriBRzje6mjLBDyBXo0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cYtfY3A9DAyn2Bazlpgn5rXX+AAV4PT94sRWgKmlUSD+weWjHAeJIzhkGzNoE4g1wWOkjk11vRtj87hG3c9VjiFGCZ0ETQmbIm/rmdE42Y7nH13I6nx4b/nqmMFCr54bnMVMD6X3XxzpbwC2zZsw/so4bkZ1pLH4lMDQCoKj+Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L5LGzeTu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54INiiSf007364
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=0Z9VhpORTd5abbKb8LEy6Gb6HHnZT5sQNZa
	86+bNWuY=; b=L5LGzeTuOajVVNlMwYcskzXya/rwGuXmH7bl0bdTpBWM2ROEpIo
	vbCpgrh1D1fvLW/WTaB7/IDwTlWkHN8elLipDeWoxclucl2VAS0NhEB9HmDRMgNp
	irWSIGtxzpE02nCEjPx2+N5xbawId6fdsMZB5dgNLWTbx67K3hRcWc7G1plNoKiC
	2gXKe2mJpYJ8uiAxx3InJo4DMX+CSLwQ7NkfFynuvJwV8lYclsv2TyD2XgCJ7ydc
	2F9+eVN7FA0I916tdddpWJGy6uborAOr+sKSik67kqCDgKbrUdFFQruvzSEckXhN
	usvXTaS0g8Jdv9N0ogMjKj0PNltJ9CO4Qfg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4kmfa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:15 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-30e82e16f7fso2412846a91.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643594; x=1748248394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Z9VhpORTd5abbKb8LEy6Gb6HHnZT5sQNZa86+bNWuY=;
        b=lIhmdWuGCMV6BDeyiBSWpbVorEiL2pVgFbH8J0C7SDCMc5LJLuW3mGkfQiAK00pweW
         G+s4fBvvpESks6q12CCiSFIFX5i1xmPuMDhtb5h2XhBMdnCdgrII3LVgiU9uu6W7XAAm
         jVjfVPidQeuCP+hvUyG/8TuSMe7uo10FgzxAJA8OFZRx+Y81lerF1VSNdnklKYz0q82p
         q1CsOVxGi2llWTbHSDGAnFiI5Wm25wxrdAE7AWW7LUxiIxOdvsYDBlwtlsJ29OFvF5MT
         s2bNHKjNfNmqpMtHnI8/laXOXRKA5A4AsG2gXTm4LFqrlXEE+gc505xN13HxAo9XZ7IL
         55Ng==
X-Forwarded-Encrypted: i=1; AJvYcCVRATk/m0N1wL2h2X701mvUxHA36Y1UbFQKnC4loISxw6qotYoVp+YBZgYIhfZtON1hc0thLKyjF6HY@vger.kernel.org
X-Gm-Message-State: AOJu0YysASp9zlg8Ge1fWCj4VAw+3xY8y6MQgSe9XJh4//0Pcgn3bpr4
	XmgA2QCEMwtvtT5UycB4QKcDNeVZZA/3EZMRtSMnt5qPNjKK/CHi/YZ1tOkZeGyr6GJhuE9YaX0
	IpurWeCPU9NEqMnqhgd82QuRoVZeUcnMxtttyNRS6GxrPaKL9yR8z42W6H534fWLE
X-Gm-Gg: ASbGncu+L2+NNRPrD6AVF6RB/7hdJC4ng+TPq/lWBwtPuOpyUmR0PwNLKSco3RH+uZn
	eEFV4cfF4kU7IsHxsHwnJVBiyndgReveut+sBZkT9XFPcFuAIW0FagNuSA9VFKIbTjIyzubrxRB
	qAI+YzSMWiQqGElZtrTx94O+qlyvoOGVOxaf9iYTcA9nFay5LdlWvJHb1BZf5QW8lM4gSdXEWd6
	HcdNITbXfPIjp+S+AFD3DhCfk7TlM1T0sdJTwWsZ3RfooLPHd3yelkQuZm5zI3elYvOqH1l4BMQ
	R2vPTYrdahVxqLJm8zrDbadIsQwf7znTID6u93CKY78OIoXr
X-Received: by 2002:a17:90b:4b43:b0:30a:9cd5:5932 with SMTP id 98e67ed59e1d1-30e7e770605mr19561734a91.13.1747643594439;
        Mon, 19 May 2025 01:33:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxqNIle8z40DmsVvDOBzsAjRCPJ9BoRy4c8Pjl4AIbG1xTCC1hNBrLuU83g02ddIa7W7uMFg==
X-Received: by 2002:a17:90b:4b43:b0:30a:9cd5:5932 with SMTP id 98e67ed59e1d1-30e7e770605mr19561687a91.13.1747643594004;
        Mon, 19 May 2025 01:33:14 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e6af9d586sm7003887a91.11.2025.05.19.01.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:33:13 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkumpatl@quicinc.com, kernel@oss.qualcomm.com
Subject: [PATCH v1 0/2] Add sound card support for QCS9100 and QCS9075
Date: Mon, 19 May 2025 14:02:42 +0530
Message-Id: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Rj3xVIeQmeSsxCUjKUxK8xVTHNwUREsw
X-Authority-Analysis: v=2.4 cv=C4bpyRP+ c=1 sm=1 tr=0 ts=682aeccb cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=-EALBZLJ3Ef-HAATTx8A:9 a=zgiPjhLxNE0A:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: Rj3xVIeQmeSsxCUjKUxK8xVTHNwUREsw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MCBTYWx0ZWRfX/VG1nSj8ZkKc
 id3f+fq51NuwsE+HtphaLXWei9cFRqmBmmwlyuh53TxgHbB+qzF/YYuiUSzBwTvQOcJf2KjwDRh
 IIvtbfDwoT3ZRuwMFDNI3rNowDBcG5iANgMBqXPOO7cl/rDf6YYQphd7Clr5c6zAFPtiQZmDNmY
 rxJrfpnqBKomVOd+pBDS/udTFDG/Az5DyHLrvoO6fHQfj2/Qiu1eY/j62a0xbuUpyteBmsg0kI7
 gOjUPiQZRxMSVOf4qMVo+MhZPUYU3OpgcF5wTfDJdrciGqWeZ0uGHNLdYQzd/cHMUVzl2J8LyTp
 CQ0c71luJ8OQ5kjg5VviqoWY8IKqOFsPOHRbSkleNMbKEml/mJx9bx2ar8sGFdsb8/i8I+otpS7
 aAAUlvqy8gWWUKGyIfkUG+DWI53I9Dzmatxyg6W/V49VzA05yXLdmCDmweNXlu0TKBiuC/xq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=777 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 bulkscore=0 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190080

This patchset adds support for sound card on Qualcomm QCS9100 and
QCS9075 boards.

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,sm8250: Add QCS9100 and QCS9075 sound card
  ASoC: qcom: sc8280xp: Add sound card support for QCS9100 and QCS9075

 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
 sound/soc/qcom/sc8280xp.c                                | 2 ++
 2 files changed, 4 insertions(+)


base-commit: 484803582c77061b470ac64a634f25f89715be3f
-- 
2.34.1


