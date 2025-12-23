Return-Path: <devicetree+bounces-249094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 523BACD9441
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:33:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11C443021071
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921ED33032B;
	Tue, 23 Dec 2025 12:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kOXfdVNv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aKLt0Fgh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB482FE595
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493214; cv=none; b=fVRyNdLOYgD5pL8LVaRDevxY7a1HhNHBvzy30I5xZz0Q3zRaQRsPeZHQw/P6olJK1l4qCab6DfGuw7g+kgEzIIDb0p9YvH/XLwTyLlrw+f0gWHYNEO3I1gwp+D8PEtsOoDVV/4TjbRcb9Dj+TPMzasshLyxUVVGIEWEnxPRgYm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493214; c=relaxed/simple;
	bh=f2DblYm4IikIkPOUFgX8XrTdAHk+qkYmAbd1e3uBOgE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WgIQSAeQCuEasfrjG/i2szrnLoq4SF7f/LhVjpmoz6tTykYmvOwgqbODh6bp566QBrhGl7F3kmnt21NEWVCwBLKno3rBfxwsI1Fmr1npc8eYf5ouBZII9fjIhfRw4bUZ0HlTpVRa37cCGCkZUvdIZ0/ar26+ozP2wYkh/mGVhL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kOXfdVNv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aKLt0Fgh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN7KgbG2116415
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iIv6qtwkYZND/FKNsvT6qnTFLyLwW4dABnX
	NrT6027s=; b=kOXfdVNvjDBLuAb35qvoJ2wS+p0z597xUL4WJL5GBA1jSNFxgQz
	9JhK5jIlxGfb2HShGYb6Vo0q+oQt9ptFSbo5Tt46neFFnRkF8RBp/kSdKel3nk2S
	si6w/FQHi7rmqcEWKKQmW8asg9rOhMyjckNU3KvxIU9x0gKWuMFwdzVm8RTkTu+q
	goUOEulUPBPh8CuvlFg/DBIFdlTkQBjDPidiYm0bZ9Q0ySII1/uTf2ipdaFQ2txm
	SmlJI2ij786APVYLWCCWtDb0ARio11tESnxo8uJTZNW8RXLD7/WHN/dK4RDWK+n+
	6IVs3GHtc9vJDcV7CwNjx/obsRU+bFHUBAA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cudjnn3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:33:30 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c2f670a06so6490463a91.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766493210; x=1767098010; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iIv6qtwkYZND/FKNsvT6qnTFLyLwW4dABnXNrT6027s=;
        b=aKLt0FghpKTKWJJ9KDnQe/Xf7fnQ6OzymBbk4RGqnkCXz9QkmfkNcFG4vQRGfWh0iO
         cPGu2fT4nlYXbSTMtJPpZ+BeiI8cprQXSGtjpF3HorZ8dwqj82KJvbxPxUKcBR3+BRGQ
         CnYwZyn0pw2x94ovitO3oSsds0nWQLBRUprd5tNmfTP9LN/Lqg51YvqWcDqwkfQpzU0W
         s/0dcPklg1shehHgz75M9zMD5FWzBU9s7wZrpwzlu5Y1xrJnmcqvDd/RaWiEFnnfGoBy
         R53QmT3rO8YjK+85iDU8ZebdGqID27gIKWvd9eW52eb5pHKtr3z5OZRtFc+YxZYyajpY
         Z9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766493210; x=1767098010;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIv6qtwkYZND/FKNsvT6qnTFLyLwW4dABnXNrT6027s=;
        b=qSAaLCtId4GEQwB9c5wO2J+VccU/b+mLtQQsSGB2EdEWgHWKtlqQ0Ist8tuMPtCjjR
         qU0uxdmYWaHcP+6VKmHziXYFQRnI4UNnZ+lfLG6A5i/6OkHHxwv1qk9Wcf+4LylXHM9e
         tdkdeam0kAEwdcGyZrCH67K36Q9Mf5Z92e29vep1fJNTweJ4Gq3y6lLguWHxpoe5sa/T
         uMpz04rkv1seOeXLuEwkPDTdETksqAk5JzdI4tqdddoHmDwiChd07FaBO2fj6aePvEsf
         zqBy4UBp+7IDj1uh0HJbpaCtZOsIcvIm82MfKFu16Q5R10L4DpzgE34Am7LOJ+RmJ5/w
         vZWg==
X-Forwarded-Encrypted: i=1; AJvYcCVmZtE8ch7hqAXHOqGRhZPOD4+p3Txq8rlV5X1WehDuxaDn7eFME95T7oZhAsrMpC0z2GO/QymOdyXJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyF/+8xgp2fz6UM205OKiqwPC/lwz3X3YKtJvIXStmedQ4HrjVD
	lRfM8Sfn8ibf56G4mmVaLiX3NXlpiEB7lD2scgsc0ALOyQKjf/GhiMivISznc/GEMmPNBo4nVIu
	ZrS4mU7xUNh4n+dq7SDqJ9G5ISxApVgSIWMnaQgb2f/Zfg3648cgo9/Zebhm0pdPh
X-Gm-Gg: AY/fxX6eMLYMwlNGKXuGtPWX0tiBgna2c0puab7RHlAF1ayrhHoHcj+ZsE4jkaty1Pn
	fEeg47YsbAR4jWPewAaSpi58lLXaKAVj0Lu0VTSa5+Gvt4MskmNbUkVWRR3XnawaM5tdOJ//qQu
	aEWS1bFo8fCFqRgI/54bI/l4Fy0U9cwiyls6JDKwQsoyYeSxGphc6Ts8CnbL3iUFB+wWmO6RqTk
	7xUrJu3qjsw3mDfGHX2UdJ9r8+hqYkZoT+/yXnbHHU8AoTm1VbqIsCrLdSgQ6wW8c/hpSQf0Ln4
	gOX4wcN5d4IjB6CV6wHGLrE255mb342yjGTKrXXRzO3TBVw0uYMV3Os631emV/+CiJ7zLTYSRQk
	yTYKYzGZPeEvmLddsR/v/SYQXdeURiiWee/ReKKM=
X-Received: by 2002:a05:6a20:3d8a:b0:35f:27d:2ded with SMTP id adf61e73a8af0-376a7afab9cmr14396100637.25.1766493210221;
        Tue, 23 Dec 2025 04:33:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrHGyedb2Nt685yxOgPioq2kyEt9iYKz++7moPb/2qg70fnbdX4GNWq8699m8Tg1kHPSqq7A==
X-Received: by 2002:a05:6a20:3d8a:b0:35f:27d:2ded with SMTP id adf61e73a8af0-376a7afab9cmr14396070637.25.1766493209702;
        Tue, 23 Dec 2025 04:33:29 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e921b39dfsm12936044a91.8.2025.12.23.04.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:33:29 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [PATCH v1 0/8] Add RemoteProc cooling support
Date: Tue, 23 Dec 2025 18:02:19 +0530
Message-Id: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ebkwvrEH c=1 sm=1 tr=0 ts=694a8c1b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=gDoSkZ6CafnO6Uh0iTMA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: WO5eUgKPQJ8mbRvZpquKxXWl7hDBdh-Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEwMiBTYWx0ZWRfX5ySTwBaTO32J
 PLh7lNtoA+1syW9U0GA1WLllsh2dMF2PbCoaZ7kiE+/3SUiJSrq2JGrs6TKyxbdcPUq5/9lvfy5
 gSzM9uDZTJ37/Pgf0Rz0GcIQ4BmGjpOf97+6U3zyB2INps2K3U1zhZbZMHc4X/KRLFH2ZWiLhEM
 ZGU5a0A862pz9BGEJ9exAMJCSMTX64Vwef2ZFs59EGgfsfqml/CPCK7XDDo8aE9tiNgmYwW9LMT
 S45kGOb2jdI0QtLsBSWGYV0pZToKx0zx7G+l58XmCyDGPuYzpjeyaVGu6r9tjhuZewYY68x5vG5
 rbrnSQLlQ4S4/upgBRW7s2BP4/JRhAuCDXiPKuiCIv/e5eQpMkMmY9K3JlVyZtGfh3lN1wcWuWV
 IosWuqEc3DqI7I5TAnGRsOgPZD9NN8Xyhjr0UNJaqg25VA3gaa2zWys8HzdvBk11x9WEXmJwj6r
 X1Mf0PJwQbCLPBnCrTA==
X-Proofpoint-ORIG-GUID: WO5eUgKPQJ8mbRvZpquKxXWl7hDBdh-Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230102

This series introduces a generic remote proc cooling framework to control 
thermal sensors located on remote subsystem like modem, dsp etc.
Communications with these subsystems occurs through various channels, for example, 
QMI interface for Qualcomm.
 
The Framework provides an abstraction layer between thermal subsytem and vendor
specific remote subsystem. Vendor drivers are expected to implement callback 
and registration mechanisms with cooling framework to control cooling
devices.

This patchset also revives earlier discussions of QMI based TMD cooling
devices discussion posted on below series by Casey: 
https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/

That series introduced Qualcomm QMI-based TMD cooling devices which used
to mitigate thermal conditions across multiple remote subsystems. These 
devices operate based on junction temperature sensors (TSENS) associated 
with thermal zones for each subsystem and registering with remoteproc 
cooling framework for cooling registration.

This patch series has a compilation/runtime dependency on another series [1].

[1] https://lore.kernel.org/linux-devicetree/20250822042316.1762153-1-quic_gkohli@quicinc.com/

Casey Connolly (2):
  remoteproc: qcom: probe all child devices
  thermal: qcom: add qmi-cooling driver

Gaurav Kohli (6):
  thermal: Add Remote Proc cooling driver
  dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
  arm64: dts: qcom: Enable cdsp qmi tmd devices for lemans
  arm64: dts: qcom: Enable cdsp qmi tmd devices for talos
  arm64: dts: qcom: Enable cdsp qmi tmd devices for kodiak
  arm64: dts: qcom: Enable cdsp qmi tmd devices for monaco

 .../bindings/remoteproc/qcom,pas-common.yaml  |   6 +
 .../bindings/thermal/qcom,qmi-cooling.yaml    |  99 ++++
 MAINTAINERS                                   |   8 +
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  36 ++
 arch/arm64/boot/dts/qcom/lemans.dtsi          | 138 ++++-
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  92 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |  23 +
 drivers/remoteproc/qcom_q6v5.c                |   4 +
 drivers/remoteproc/qcom_q6v5_mss.c            |   8 -
 drivers/soc/qcom/Kconfig                      |  13 +
 drivers/soc/qcom/Makefile                     |   1 +
 drivers/soc/qcom/qmi-cooling.c                | 498 ++++++++++++++++++
 drivers/soc/qcom/qmi-cooling.h                | 428 +++++++++++++++
 drivers/thermal/Kconfig                       |  11 +
 drivers/thermal/Makefile                      |   2 +
 drivers/thermal/qcom/qmi-cooling.h            | 428 +++++++++++++++
 drivers/thermal/remoteproc_cooling.c          | 154 ++++++
 include/linux/remoteproc_cooling.h            |  52 ++
 18 files changed, 1981 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
 create mode 100644 drivers/soc/qcom/qmi-cooling.c
 create mode 100644 drivers/soc/qcom/qmi-cooling.h
 create mode 100644 drivers/thermal/qcom/qmi-cooling.h
 create mode 100644 drivers/thermal/remoteproc_cooling.c
 create mode 100644 include/linux/remoteproc_cooling.h

-- 
2.34.1


