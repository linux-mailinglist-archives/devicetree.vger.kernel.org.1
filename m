Return-Path: <devicetree+bounces-262091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBcLE6qugWn0IQMAu9opvQ
	(envelope-from <devicetree+bounces-262091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:15:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B76D618D
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8381C30B12C2
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED64392C5F;
	Tue,  3 Feb 2026 08:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eBjz/uUJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hPjI5C9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43BD3939A5
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770106131; cv=none; b=ixebLBT0jHU8s4McWjTIgppOMO1XwNgZqTGCMQPbLBVTbeWA7re5wAXzML1qlPtK/nRdcA8ZIEpV4IR0YD9WIKAhicB3wszOdS469tSxuihJ+ISTNLcL15Hm7srx6QQ8kllSQGq7faSNkLokjELrxe6nAVw74GAxf5RSvjkFoNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770106131; c=relaxed/simple;
	bh=Hg7CPlLaEuR8LoFGJ6BJbJDkzmP003gt/fj56vM6lhM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KIz7BcuJTX6FmGLOHc+UDuxy0X9PcSfbRCqLHuTTC5MJqv2hK//AIZVpu7zuibkNf1ilj6r+EIBKu0dNIXKPSNxmX/C7OC6kesCxKolryLFMrEX1hdbZGKY6SP2P2YyruoCK0DkAyH/QNWBEEf368DBN8hqG4WkRw929efCtKwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eBjz/uUJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hPjI5C9R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6137MM9f2884370
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 08:08:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qIUBUbFCuK7ED8zHiEvhHyphzTrSd1weKbtN3aWFc5s=; b=eBjz/uUJ/PR8UGX6
	mr3YuUOQBwBCO0wV4M1jfxBJfA5qUEAtxjpTm/ouj7kZCDshswhNQSxll9AMyLx9
	WbNiGW7TxBskDd69u94apdsm0GaM2sDRn2KgCYdfAI194BFVRNE2kRJoS7lwN2t4
	2FPbMInr/k+jS4LpeNAtpPSz4qim40N2xGQjpkNxQTi1pXJ+XzMzjULbaEPwimGt
	XiKav6SZpICEEZFkejOSM8j7qk5ZQLzig5WN9kV96bhc6fCLvArsUEaOQBO2A8v+
	tWuEk/Xd4ceHsQTpYM6W0EHADX91JD0sRAZDgUtx5+GtqN1GUW6h2vGHufRqlqKj
	Edl5XQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2uu3k9t4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:08:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a92a3f5de9so1670255ad.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770106129; x=1770710929; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qIUBUbFCuK7ED8zHiEvhHyphzTrSd1weKbtN3aWFc5s=;
        b=hPjI5C9RrSRwakyVn+dCWfp5Anv6jiIb7iPAHoS/uK0JectYOuE/y+HQpvdR0/6NTf
         NjN7eYo5RyQh2E9NrYSlk79j7nFIK7K8YFJr2kL8CfBTE6XVUMUApRu06pS4c524NKNT
         ZDhVLSyN8OqAhFzfgVBVtQukiyONp6ByPEIZNUqeoiUdhRB+rrFcMf2xUhKzHGtDJK2a
         Qa7Rez2YgSWxsqtEMYmQ0nci/YXhmfoir5rgReqiko3wILvEK0d7nIRQr9YiAePz3t1T
         XW/nEkHSxmqwcjyU3DawTergyLxUORo+V5rsPP/L64i2zwgc2OpHNJvJRRoePSqbv8QL
         4wRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770106129; x=1770710929;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qIUBUbFCuK7ED8zHiEvhHyphzTrSd1weKbtN3aWFc5s=;
        b=P2Pj6Rtp9i5TscDDSiHDWDzlBdUgtwtOZ5oUy98F3Sc/LijCA/LOlV1XHigKrs5D66
         7KaeWsOiY0t9MTaTzOLUYBTT6SYifNLGd8rsb6eBYALqCLbOY9LdXa8NBvk4IjIqUczF
         SuqQiokVY93HKUnWsCYiD5HjL7XFqTRjXBpwm+yCaTv8/A8pCUd8R6EdJaVwanpMj19k
         qyplSs2pJsXekr3PjbCC33gO0ofY1p2JXAtkJJuLCPfosNysmhKGotM5fBGxhzm84f7v
         HpdCgBdIXY8WUSL75p69YaO0yWQsvQEHpEhLnDzHpQrFX4NGP5svA1szzhfaLihTzRR+
         I34w==
X-Forwarded-Encrypted: i=1; AJvYcCWDECtiQHAnP65LwpN6vHYhfB2SdtdlF+a8qZfipq3GP/V9frulrPB7Awqh+sxoirS18PiseEUyLNSs@vger.kernel.org
X-Gm-Message-State: AOJu0YyOFQgr1RDv3TU+dDX/4KKyzuvka0sEXKqcm8bxq/OPf4x6JtFq
	eHjapeLAaV+A+E/0ShhlIDn261rM5xIXEHSyLhJLpuUwTc1xl/OfwaSx4iUVjHI6D1qD+xurN7R
	463PUvl/hr4uO3XvcE9iU6GFa05km4IYNO9o5TOIv1N4cLaTmH5rJvOP1LiaSQT6T
X-Gm-Gg: AZuq6aI4egYoP3LodRaFLbkaR6wgzZZOrXGHgoBRCAO7EorHJELmdd16CQg4wIVAFGg
	EkjljLGrEzP7830KBVGsyroSir0SEdHy2iinTQQnlq0POtaZmU6EOgXgJtjsNhc9IltcSUKE3US
	d/irji3irLYRY6vBREGSipEjqQJkDnLGgQu1MagmXdJHKr4HXTFGHi98RCfcmKPHca0mkQOjTJN
	y3cAStxBbo1QZeDeED5FqR7ehaKiG9YHjBsn5iHBf9lAgZrsOmZArMVdd+slyj7TCUPWyA7RkAq
	9DxN29STLxDnuryT97aSDP4FoEZmu05NYzGwNy6F1JN6pWPsQ1+YVCD+q/XO2GDazIP7fPf+N+7
	nu/cZdLLMb74u6e3CRPxEjoHVouIs7iNLnVlMSyiSGi8jT75LbI95xvQ1D12mc+CAYHZXn34w
X-Received: by 2002:a17:902:c412:b0:295:9627:8cbd with SMTP id d9443c01a7336-2a8d8150724mr147540135ad.33.1770106128628;
        Tue, 03 Feb 2026 00:08:48 -0800 (PST)
X-Received: by 2002:a17:902:c412:b0:295:9627:8cbd with SMTP id d9443c01a7336-2a8d8150724mr147539885ad.33.1770106128161;
        Tue, 03 Feb 2026 00:08:48 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8e512bc2asm103144485ad.100.2026.02.03.00.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 00:08:47 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 03 Feb 2026 16:08:24 +0800
Subject: [PATCH 1/3] dt-binding: document QCOM platforms for CTCU device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-enable-ctcu-and-etr-v1-1-a5371a2ec2b8@oss.qualcomm.com>
References: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
In-Reply-To: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770106119; l=915;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=Hg7CPlLaEuR8LoFGJ6BJbJDkzmP003gt/fj56vM6lhM=;
 b=WRZ2bvUyTTm2rpmGeFEKx1/5Y4HF4BvYZpYDjG0rMqZ2Idc8R5G8oL9cV9xMGP2gygP0mejBL
 baTmZ5LN1iVB6wj8l6pRqYdqE9+yXdEcKFPAyFxZkFVHX8IPrLlNukv
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: Bh0ZtECnkK1td9JMXxVbWrE5Rq8cCQy1
X-Authority-Analysis: v=2.4 cv=OrRCCi/t c=1 sm=1 tr=0 ts=6981ad11 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=K-gU5Sf5JpjFIvSPVLUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: Bh0ZtECnkK1td9JMXxVbWrE5Rq8cCQy1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA2NCBTYWx0ZWRfX8NlZg0Gc/R5/
 2nFsrR9R6liXqgHcqw+3iXDIepMXL9MLZLiPj2pQpydvqckZE5huE+zNx/hXwFtl4gSR+merMQk
 VfiAJRmBOfxUtvNtCapCQF4T7jZLasKO46PhxrG41A8xTas38Zt4VUMzcqh+/gnMZqlNnk65P1V
 2Je0nydpQJgNbcLGqXP0Op6I2C9FtXBQgg8b8u2HSmmxMKhwLWHyKuMmkRMR7MXVJpXZTmv8N0G
 cCQKkWaFSOqtsCaun6TrhIY/q6o+0Bu5TdthglzXSNazfQD2/G8ASMBQCL144KO024IWPAoZ78Z
 qFA35LM8+KfhMf8wgq6xczKLCtGbw/+HxAT990eJ/8wpvGU5cNiD6fibL7fo5FOH087NQWhH6wZ
 GcUGEWklikJZ6djz5E+iqdSQKrOOenPSgUMUSKsWdd2mAm7wSMpTnk/6OJbuQVfsJIECfyd63Ov
 xtEI2j7XQlSqFl9BRQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262091-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A2B76D618D
X-Rspamd-Action: no action

Document the platforms that fallback to using the qcom,sa8775p-ctcu
compatible for probing.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index e002f87361ad..68853db52bef 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -29,6 +29,10 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,glymur-ctcu
+              - qcom,hamoa-ctcu
+              - qcom,kaanapali-ctcu
+              - qcom,pakala-ctcu
               - qcom,qcs8300-ctcu
           - const: qcom,sa8775p-ctcu
       - enum:

-- 
2.34.1


