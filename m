Return-Path: <devicetree+bounces-211739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E104B40616
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:06:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B6D21A81F5B
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CAC62F5319;
	Tue,  2 Sep 2025 14:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cBhk9YbG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014132DFA3E
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821664; cv=none; b=PQZDZiENlr7spuYU+85MtHYf1ic8GL6E7vC1ee2O76bwbWBiZXh0pW146bZRbOorgk8FbS9zpdEP0hwFz2b5uhFJ5V93Tbmq3zu+FonwZa+3kp9LJ9283x5tBHC2OzZb4agFarc0K4//G5PoV0U3nH12sfb5f7YgD/edMqJ18rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821664; c=relaxed/simple;
	bh=JJm99rnDzEe1ECFjAWGF6ytHuNYXto1CkMPXhCZn0eE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ErK+KyCxutJCpQutQpwkOUbplVSHEg/HtsalGmgQJi2nWTkbLIlY/u6SZOSk4/TFEFjGsZIR3rgpNq3asxmL3i5e4dRjvqC6XRPzgD6sI+M8C5I1fUU3bv39k0qTGONxEqd6kXZaG1Kp9qvy72Yr7ckR6T+WTH1e3twCfNRGaJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cBhk9YbG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582ASNlc024996
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2az2Im644tqnDNw05Ee2bX+L6BhbJIk8rCO
	P5D6QQYo=; b=cBhk9YbGVfE1KJltBOSAjAVN3ty5dm2PKnQPH8+BkaNEkf5yn03
	Qi4tOiiNDX7w+w136jSnLYS2bzvpj88K17ja6jeQWIUOysuhNLjK9p6gJmN2v24z
	8JQc1wKnUF1v9P4ws1LJu/YU8Y14l5zRF+P9hXzLReCn2zSxnhfg9iQJcl1BfBYQ
	o7U/sczHXFUUN4bFAivgNv9rMWyZsYer227cw/f2OlqR4pv6dwGTZdIeaDs+VTLj
	uriMTvcTB8dejNN4kYP72b3AblUeXhLUi7hGj9GhCtXuKXI0keWQ5y5/T+ZtSeFf
	nHb3Hxaz1F7lvv7cKyOlvPlnNNjLt+Rn0sw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv02gv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:01:01 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3415ddb6aso22564221cf.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821661; x=1757426461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2az2Im644tqnDNw05Ee2bX+L6BhbJIk8rCOP5D6QQYo=;
        b=tSCGEWgF89M030FWTmmKbkjxXzdN/3Bq51MOTYg3dbWKYxXZ+gHAQt0zeuNljESY5S
         U6mw5ihB3W26HTuISehULBzZAG8dhkxIEwcA0G0wQcdOk41q9wNdhKA3ufkAiwcLtqu3
         VnQXFdR/YFRbHodYxvJqfbMOFOhQ7cElUue8JONTjbjJGnKsXzoFMA0X6mshOoQVyi+r
         T4wQrwSvv3nwCHo5EVyjJ+I5exkZH6qddRtD0oaM3F1I2hfmq6mcy3C7pjDz10POq4gv
         aL4rQ90DGRIg4rpQtM3HJbPnQWJOyWFdV4e1whP7q5oTj8QNGalh9ALUGJ7NtCvdeRIR
         04hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyQlcFhK2zHp5mVOetRK86KjXzYwefI0ihuCjERah+orrmyvz24x1+DmZ3kmTy+OPuhRaJPyXtLwds@vger.kernel.org
X-Gm-Message-State: AOJu0YwcxBI5FLsbCnv9izahrHSX20EV5Timmj6YkiEwGgb13h5DLMNC
	zhiqTGncHnpfXKDc+FH4EDy0P3aRf1oSWDttLmSGeel7dbffDUMP+3HDbS9XK+9qhE9UY8aADl/
	TKa1g9zNmpkCFl2PP6z9iuqkb+7afLC/vuK22rBIXWmWnkG3757K7ihebvw6KBFMVwox6ch7n
X-Gm-Gg: ASbGncuEwDRtjBRiMySXTZUL6bx4gVivXIqAPoi6Evzqd0I5Yyba/ohVoBSJxfUeQs8
	g9Z2CBJUlSjNZK43ytUvudi8uGB5Sg1HQ9bpRidC6TMcz2VDkh1nY9krx9DwS/3EPGI9diGHta9
	6HV1JZ7GwJeK9zga1TUbjv3GxIhkVGE+dhKH43BmOlNKZ6T1TIz5VlPvkwWKC7gdeUJiZXPqCem
	Pc2tPkJcEDJyO8nzy1X7jlFB+1pURWIDwYz7dJMKIuMwIkadSRyVOGYHEv0aZEWn7Auhn9MA/Ub
	A8ukJivvZlZ2i8KKyev/ERewjF1OA/jQuDeO5uDJXwL0yE8uju6Slw==
X-Received: by 2002:a05:622a:1111:b0:4b3:7ec:d238 with SMTP id d75a77b69052e-4b31b85ed4fmr135598481cf.4.1756821657296;
        Tue, 02 Sep 2025 07:00:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPhaC3o/U4JWaz8rPrv8EPnrnVo7uBTe7rQa0n7CsRBSYcKVshYqyzlm+d72I/Hi9srgNHSA==
X-Received: by 2002:a05:622a:1111:b0:4b3:7ec:d238 with SMTP id d75a77b69052e-4b31b85ed4fmr135595041cf.4.1756821654981;
        Tue, 02 Sep 2025 07:00:54 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:54 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 0/6] ASoC: qcom: add support for Glymur
Date: Tue,  2 Sep 2025 15:00:38 +0100
Message-ID: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX3x5RlPD9je15
 rjz5deejedBsvIsXvWToIx4Al2ljhipEqMA9Yi6aZwDjGHLji5vBpXYtVaeHEnY4o6K/bJi2tVM
 X3w0AvB1KyuXN5ZvRh5pta7ttB8JoB5YUpgoxr6w2zPzgrSdiYddDhuPeyBiYsvaJwVIXD7ObXF
 zu6D9p8NnJOOSaEEdc4tPMymlAK3NUemr8AzyLiXy7fhvN1hAuKIyLxAGXBFQo2XT064RktAVx5
 9jKea1wurrm0Fg995spX3A/4v60ZOBWBvI4WE9Eg08ZjEimaHS5UlPHyk0bgKq8H0uH5yMx10fT
 NipxjN9E7ynBUc+YNNPp5TmynJ6MmO3ZGQ8DEC920/8CMBFNzxncfVPIW4Ey/mJFAjlhSmwsD9q
 7RZ3lJxz
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b6f89d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=FrvE4Lm6qVnUI7UI9j8A:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: CxQgqzFe23mKtFyxN8hsusI863tedJEy
X-Proofpoint-GUID: CxQgqzFe23mKtFyxN8hsusI863tedJEy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

This patchset adds basic support for Glymur sound card,
- by reusing x1e80100 snd card machine
- reusing lpass wsa and va codec macro which are identical to v2.9 codec version.

For now only tested WSA and VA, which is why tx and rx codec macros are
not added as part of this series.

Tested this on Glymur reference platform.

thanks,
Srini

Srinivas Kandagatla (6):
  ASoC: qcom: x1e80100: set card driver name from match data
  ASoC: dt-bindings: qcom,sm8250: Add glymur sound card
  ASoC: qcom: x1e80100: add compatible for glymur SoC
  ASoC: dt-bindings: qcom: Add Glymur LPASS wsa and va macro codecs
  ASoC: codecs: lpass-macro: add Codec version 2.9
  ASoC: codecs: lpass-wsa-macro: add Codev version 2.9

 .../devicetree/bindings/sound/qcom,lpass-va-macro.yaml       | 1 +
 .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml      | 1 +
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml     | 1 +
 sound/soc/codecs/lpass-macro-common.h                        | 1 +
 sound/soc/codecs/lpass-va-macro.c                            | 2 ++
 sound/soc/codecs/lpass-wsa-macro.c                           | 2 ++
 sound/soc/qcom/x1e80100.c                                    | 5 +++--
 7 files changed, 11 insertions(+), 2 deletions(-)

-- 
2.50.0


