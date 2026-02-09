Return-Path: <devicetree+bounces-263844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLcHJjCPiWln+wQAu9opvQ
	(envelope-from <devicetree+bounces-263844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:39:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1A210C813
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 459EF30015B8
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 07:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC9E332EB2;
	Mon,  9 Feb 2026 07:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WbREZVyD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="di869Rio"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC47331A6A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 07:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770622754; cv=none; b=NOSbir8eUJSkbO1wrzEz9+HKNxKxtOb+VS9KTuRZekJn7lIQ4+wrSJWivdbFQHPjOtKJSs4aEQTGrFs17tkh1DpOq+AwYUQlX4A2Anl1N0QWN/YFHHMXBcDx2wjfamBiGIicmmP0Ta5TQMkHJnC4A928fq2aMBPqbNVHckN4a5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770622754; c=relaxed/simple;
	bh=ld+F3QmecoKV5vXz3tiOVIbb5F/15RgUuksVv3oT0ss=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=n22emAOjaAlltBjlyYZh0MCXmlp4/qvDV2SYr0pfi31VOBqFJ+2W6wWITKcqmhQ/3WK7K5eNJyXDThBXt0yFKtUFYrtrFgPMu6pYnZvAcgoYO2TSqvc3A497Q4N1gsOx0ldsAZANyQ4H5BeeKcXdoKAdnk/AF0IzpYl1mUgVxxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WbREZVyD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=di869Rio; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618M03xA3120829
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 07:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/xgOHuL2L4ZjihXdLaEOgh
	MsC5htjYBZGgtvKK+z9j0=; b=WbREZVyD/kd9sQlRLsxQTfZGBUoqHXVG7pQ/8Q
	2cDUboocPHuEm0fJHvGqeOpYzkSHOjfnwpuRivfUBoKV0+d3OjZTu9cEEVVeUJhf
	ok3A6lju7KfCI190Wh19wpwFybq1sWHvcKbq0LTxKC6VmaJRIGlx8P4bjIuBydBE
	WesDxhNBVPRsDkuFhw1YBWhDsKEzEd++eViTX28sSyEYTleOcJwqCI29X0SYmN6I
	rE/O1lUqjcRXZZcXJbSHITKSLc1+nQpd27mvqJWciF0F1/qRUWLoTe6uzHQ1NLqA
	sZhlYXpU7dAPlUe1ybI0vCgj2b52ykq1d8nOgM3a8+c/AyXw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c64hnkmnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:39:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aae146bab0so15167355ad.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 23:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770622751; x=1771227551; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/xgOHuL2L4ZjihXdLaEOghMsC5htjYBZGgtvKK+z9j0=;
        b=di869Rio93uNnhjNYZmfZ12h4pc3OslVkE9cX5EWevXD/x2kic33GWVnWjUqytUron
         9y6EzVajr/qMCpukL8cGvX7btMxT1oygiy7Z/teCjD7lf+p6Bc6Mc1ZbnjqIWUQ8ygUW
         5YLJuZtjpdBGWrgSM/9P7iEmcyRHyMHa/fWYrHaqghv6qcJI5E6QDpQePdC06inMSwA6
         MXLjaXTV4hX8OUkoyAXk4FtXpIOwgQ0irfxwXlT/7+Ocy9EgBn6q9+hMkX1O1W1Va0sv
         hnItx2XgyTvhKBFMLbzx8Ctb0+y5/8WjRb2CZUthcODTl9MsTaY9zWTdSOQEs7hidBo6
         mz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770622751; x=1771227551;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/xgOHuL2L4ZjihXdLaEOghMsC5htjYBZGgtvKK+z9j0=;
        b=gTcrRM+qttSj5xJnljHD8MrdqQW5M/Wo6vBtR8weXfY1+XbStOQzpH6za4gzKzJ0u9
         gyB+j0DFci3ftAbkLBMDMyYb5Izn4MIyPTBbr/Pr28wqGYdcIvsx91MGm2r081Giwe9Y
         6Txrp8DiJ2a1b70nZGlpm3O3BzsdvsOg8HaDOwkkCUgEJWgbque3I2S/scAqrG1zy0pf
         Zavbywau279SHSu/L8roC/eH+bVZyJpgcWwnFfi9Fy96Kho5wPGV7EHHq76S60x8lSH1
         h/LGnhZs7hgFlUyxAYy+e0jBzO22f7hYHcgObM/fc8LLb3hyRITmSiLuxPItzCuIlg9u
         qyhA==
X-Forwarded-Encrypted: i=1; AJvYcCXbXeE3RoNvm/Iv3vqGQG9k/sJn5CD38y+66k70a9/Yy1eeFoxglSBTDA+nWc7yMCPICduu45gUxO6b@vger.kernel.org
X-Gm-Message-State: AOJu0YxLMrqs03EkGNwZze3N8xFHmMDXp4CmcRoBGCyJ/DEdK+BwLeni
	CxBGr0tkOUewrlHLSUqASpXBAY68IKYrKq5+GjrUBurFmoFr27ROmmI53CD8SywV3jalZoCYgMm
	RJgNKv5BaNeLdyEGsO5jUoG1Ke2lI5Hylw/Vpwp27okj5t4e6fXNKYCYquPQ5kZgp
X-Gm-Gg: AZuq6aIzmj6/+WRafsnqzNSJK/uK5T8cQVejP2ue6gX9ykdjGPnaN8ePzn42ruM+z/r
	RmgL328wJcVsVrRB6geKudga/6BKWmXN+2wKxiLvnw5brKNtdasJm7vc0tknTUzfcmp5aIVbaKQ
	Y0xepnDwc7hN3vgeVdlaVD7uEUU6w5Tw8WjvczuR7WpTgM8oc8yIBZiNNBbk8UyBsZG7JHmKeq2
	QJ2RluYqhINC5dNn6qPC7Fx81wV68ayHbZXwlPHatXpHFwVpff5wIsQL2WSuYTggXtwlLYky1w9
	SU0yBEInMeKEBG3Zo+sriDlcQGXiVr5WKBEWJIks995IRy3mk5Tn4ok1CoxPnf6x5cWn6YWHS4M
	RW1xwsIOoqCW80xGfEgrsRPu/p0awex5RI9z9ii38YlaT3uhyH3I+r+N0oNFUyVl/IWDVYmhzjB
	mGKKdgf3AH
X-Received: by 2002:a17:902:ebca:b0:2a9:e8b:5326 with SMTP id d9443c01a7336-2a95164f021mr87347995ad.23.1770622750900;
        Sun, 08 Feb 2026 23:39:10 -0800 (PST)
X-Received: by 2002:a17:902:ebca:b0:2a9:e8b:5326 with SMTP id d9443c01a7336-2a95164f021mr87347685ad.23.1770622750335;
        Sun, 08 Feb 2026 23:39:10 -0800 (PST)
Received: from WANGAOW-LAB01.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c9746esm99023545ad.39.2026.02.08.23.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 23:39:09 -0800 (PST)
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
Subject: [PATCH 0/5] media: iris: add support for purwa platform
Date: Mon, 09 Feb 2026 15:39:02 +0800
Message-Id: <20260209-enable_iris_on_purwa-v1-0-537c410f604f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIABaPiWkC/2WOy2oDMQxFf2XQugbZ8ftXShj8kFtDZyaxk2kh5
 N9rOl0UuhEccXV1HtCpVergpwc02muv2zqAv0yQ3sP6RqzmwSBQaBToGK0hftBcW+3zts6Xe/s
 MLCCiEiagsxnG6aVRqV8/ta/ngxtd76P9diwhhk4sbctSb35yVqpUzKmYHDU6mTBbyV3WIUcrL
 QpbZHCCw18rPw0nxTk/sUPCoaFkVJROOb+r/2GNXOjf8F4zbSmxFJYxEcmMv0ZGKn7ncH4+vwH
 UFqPAGgEAAA==
X-Change-ID: 20260209-enable_iris_on_purwa-a000527a098d
To: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wangao Wang <wangao.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770622746; l=11309;
 i=wangao.wang@oss.qualcomm.com; s=20251021; h=from:subject:message-id;
 bh=ld+F3QmecoKV5vXz3tiOVIbb5F/15RgUuksVv3oT0ss=;
 b=7tWCROPSH3oxdLeUahOkyobkzvthEwH1c/wEtPvp6aFqTV0OGScRfREgXAZqEw7bRPfYUr1lL
 XcIaebP+EZwAqMZ6AyE4KRUghHCFf4hQ4K5x/pmlym5xJ297XREBAXx
X-Developer-Key: i=wangao.wang@oss.qualcomm.com; a=ed25519;
 pk=bUPgYblBUAsoPyGfssbNR7ZXUSGF8v1VF4FJzSO6/aA=
X-Proofpoint-GUID: NnKJO0GZq_qgPQKYzHKjNi45auB0kPFM
X-Proofpoint-ORIG-GUID: NnKJO0GZq_qgPQKYzHKjNi45auB0kPFM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA2MiBTYWx0ZWRfX7qEkw+Muw64t
 LiSs7B1VOPL6IdGR0c0ww8Kv4uZEe9a5ugWtNAztcFesNMNt+UNTwVQ2B2pIwnv2mQliDSAntYM
 VNcvQnWsdlou2SKK8ZWjYaXJbdLM1j1mIbc2DvGwpq+AbvRF36YNwWIFNQGYo5gNQooINZuxGgj
 gf7WxCuWlmW8m9PowIToGLnjStWmnVWNfuAeWbYq+t0dO+RqOqeQRIAbwQV2ZWex54pVmWLwKYq
 o0sR/Au5qWrbgEbWMQ1Nj10OTN8Ps6ojQxihKGXEqJJ3vuG+r1Bx5E4lXaIDYEMevmZpGAqojvH
 u9gw6Lvt66wFrjEFKRTs3r5wUIHSohrlEay5ibZUFzEJifZKOlaaNgRw2fewGvWt+3nwouUALv2
 xnw8j9ZSTGEKqmDfBtxzasSmsgCNkjOvTmB8Rjh1SwbT07RwzJO6d8NHbZZzn/vqbHQZPBy49rv
 UsOhNS2uGD9ki5+Wl5g==
X-Authority-Analysis: v=2.4 cv=SNlPlevH c=1 sm=1 tr=0 ts=69898f21 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8ON_ZOelJV6K16tngOgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-263844-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,localhost:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5D1A210C813
X-Rspamd-Action: no action

This series enables the Iris video codec on purwa, allowing purwa to
use hardware‑accelerated video encoding and decoding.

The Iris codec on purwa is nearly identical to the one on hamoa(X1E),
except that it requires one additional clock and uses a different OPP
table.

Therefore, purwa can reuse the Iris node from hamoa, but the clocks
and OPP table need to be redefined.

Dependencies:
https://lore.kernel.org/all/20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com/
https://lore.kernel.org/all/20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com/

All patches have been tested with v4l2-compliance and v4l2-ctl on
purwa. And it does not affect existing targets.

The result of v4l2-compliance on purwa:
v4l2-compliance 1.31.0-5379, 64 bits, 64-bit time_t
v4l2-compliance SHA: 14c988631ad4 2025-11-11 11:19:35

Compliance test for iris_driver device /dev/video0:

Driver Info:
        Driver name      : iris_driver
        Card type        : Iris Decoder
        Bus info         : platform:aa00000.video-codec
        Driver version   : 6.19.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected Stateful Decoder

Required ioctls:
        test VIDIOC_QUERYCAP: OK
        test invalid ioctls: OK

Allow for multiple opens:
        test second /dev/video0 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 10 Private Controls: 0

Format ioctls:
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK (Not Supported)
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK
        test Composing: OK
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test CREATE_BUFS maximum buffers: OK
        test VIDIOC_REMOVE_BUFS: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)
        test blocking wait: OK

Test input 0:

Streaming ioctls:
        test read/write: OK (Not Supported)
the input file is smaller than 7077888 bytes
        Video Capture Multiplanar: Captured 65 buffers
        test MMAP (select, REQBUFS): OK
the input file is smaller than 7077888 bytes
        Video Capture Multiplanar: Captured 65 buffers
        test MMAP (epoll, REQBUFS): OK
the input file is smaller than 7077888 bytes
        Video Capture Multiplanar: Captured 65 buffers
        test MMAP (select, CREATE_BUFS): OK
the input file is smaller than 7077888 bytes
        Video Capture Multiplanar: Captured 65 buffers
        test MMAP (epoll, CREATE_BUFS): OK
        test USERPTR (select): OK (Not Supported)
        test DMABUF: Cannot test, specify --expbuf-device

Total for iris_driver device /dev/video0: 54, Succeeded: 54, Failed: 0, Warnings: 0
root@localhost:/lib/video_test# ./v4l2-compliance -d /dev/video1 -s
v4l2-compliance 1.31.0-5379, 64 bits, 64-bit time_t
v4l2-compliance SHA: 14c988631ad4 2025-11-11 11:19:35

Compliance test for iris_driver device /dev/video1:

Driver Info:
        Driver name      : iris_driver
        Card type        : Iris Encoder
        Bus info         : platform:aa00000.video-codec
        Driver version   : 6.19.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected Stateful Encoder

Required ioctls:
        test VIDIOC_QUERYCAP: OK
        test invalid ioctls: OK

Allow for multiple opens:
        test second /dev/video1 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 38 Private Controls: 0

Format ioctls:
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK
        test Composing: OK (Not Supported)
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test CREATE_BUFS maximum buffers: OK
        test VIDIOC_REMOVE_BUFS: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)
        test blocking wait: OK

Test input 0:

Streaming ioctls:
        test read/write: OK (Not Supported)
        Video Capture Multiplanar: Captured 61 buffers
        test MMAP (select, REQBUFS): OK
        Video Capture Multiplanar: Captured 61 buffers
        test MMAP (epoll, REQBUFS): OK
        Video Capture Multiplanar: Captured 61 buffers
        test MMAP (select, CREATE_BUFS): OK
        Video Capture Multiplanar: Captured 61 buffers
        test MMAP (epoll, CREATE_BUFS): OK
        test USERPTR (select): OK (Not Supported)
        test DMABUF: Cannot test, specify --expbuf-device

Total for iris_driver device /dev/video1: 54, Succeeded: 54, Failed: 0, Warnings: 0

fluster result:
H.264:
Ran 77/135 tests successfully               in 31.521 secs

H.265:
Ran 131/147 tests successfully               in 23.490 secs

VP9:
Ran 235/305 tests successfully               in 78.181 secs

Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
---
Wangao Wang (5):
      dt-bindings: media: qcom,sm8550-iris: Add X1P42100 compatible
      arm64: dts: qcom: purwa: Override Iris clocks and operating points
      media: iris: Add IRIS_BSE_HW_CLK handling in power on/off sequence
      media: iris: Add platform data for X1P42100
      arm64: dts: qcom: purwa-iot-som: enable video

 .../bindings/media/qcom,sm8550-iris.yaml           | 23 +++++-
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi        |  4 +
 arch/arm64/boot/dts/qcom/purwa.dtsi                | 53 +++++++++++++
 .../platform/qcom/iris/iris_platform_common.h      |  1 +
 .../media/platform/qcom/iris/iris_platform_gen2.c  | 86 ++++++++++++++++++++++
 .../platform/qcom/iris/iris_platform_x1p42100.h    | 22 ++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  4 +
 drivers/media/platform/qcom/iris/iris_vpu_common.c |  9 ++-
 8 files changed, 200 insertions(+), 2 deletions(-)
---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20260209-enable_iris_on_purwa-a000527a098d
prerequisite-change-id: 20251113-purwa-907ec75b4959:v5
prerequisite-patch-id: 2ea4d3d7fbac51bbe48d22b5c58935b3ac96cde1
prerequisite-patch-id: 66cdb67c1bcc2519610764ccd90b551fb8713493
prerequisite-patch-id: ca9086bbde147db45705752a7ae259c76659d988
prerequisite-patch-id: 472b96f74b6d14eab239a551f005f601af9633e8
prerequisite-change-id: 20260126-purwa-videocc-camcc-00e709474bef:v1
prerequisite-patch-id: 9884a11a7a39ea49ea4c6ac72adb95240c6788e8
prerequisite-patch-id: b5be9dcbb612a14108f890b2782860847edfcbe4
prerequisite-patch-id: 2f4d4c5c118e057c76e6d2785479df01d5bc1c7b
prerequisite-patch-id: 026db5dd71d5b0472225ba72c8ba2781334143a9
prerequisite-patch-id: 615e6f38e528de35dc206f1c7f3eaf78ff04afe2
prerequisite-patch-id: 8732f9b7fdce567cdca57e6b8520d0279469edf1
prerequisite-patch-id: 1162da1ca0a8467c41141a5a0bf58b85b7777c38
prerequisite-patch-id: ee26e00cdde21ddb070af713230082ad3454422c

Best regards,
-- 
Wangao Wang <wangao.wang@oss.qualcomm.com>


