Return-Path: <devicetree+bounces-258933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIaVAwVtc2mnvgAAu9opvQ
	(envelope-from <devicetree+bounces-258933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:43:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DD975F10
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07F06303C625
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D1B2E54A3;
	Fri, 23 Jan 2026 12:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cvpg7NMP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fRIOV1SN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF13B27FB3A
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769172213; cv=none; b=RHwo6Oz3Zm6y9LShj6qis1rrumSjPaTTlHJN8uRbw4oFvKcb4GxDF/OgHaoSoi4lfVV7X2AQgLpSVYdEWXcAED6BogIyc7Kf7RGsjeiReHqtm5t1HE6gHW4rt4lSQnFZoOg0UPXoBGnGY+U4lTqFxsQiBISAC9IbiWed5EuKjRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769172213; c=relaxed/simple;
	bh=xzYnfavGks8/Nf1wmC5RpoVd3setmpv2vyqC2K8AFEY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oePKCVymMpLcPge35iidAKP9Ab0zNojtoGxYTBVzPG4R4R8sLoCzNFN0IV2A3ohDjyy0pahiB9J3/loV+AlDqb9Rca6e30u6nrselH1PKa5bAhse+5rw0vHNKIoYu3geen5hdTQb0ctoHjqUJybOcohwUyGvPQhTEWh1XMF+4U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cvpg7NMP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fRIOV1SN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NCMntk2912752
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=AxORIB0BtpxHWiKdLwZJ+a
	wyCeJqeuP04VIfpvxIn4I=; b=Cvpg7NMPqBqCxSgIImibx06D0cBiAxKvj1t6qO
	sBem/dSto/yuhhzYDkNb/IL7rV3ApgwaPQmSTIVHfd8qmIk5B/pF4FdrpFqeAXGi
	rmCAuB13nWYvGCZ3jBgp/JbXZ1iZaYmo64r28AcRXE9HjWSfr9KWq0iTL79ZnG3Q
	sDNKAp4A6W02c9pGEsICdd7hQUFUMFhm+4qn3bJNx6DXlfVRP8q6KQY7+fXk8+Aj
	uo1p4tmja13GkeHI3HMP0bQmI0ujmOvJ3ztSDRqDbjMjD4G1LCpsXulqkbXuJOLK
	eT++FeSlY6dGOOemi801pY0ipur07n3SaH6SHM8LInz5hBBw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buvs1tps0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:43:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6deddd7f7so341019085a.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 04:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769172209; x=1769777009; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AxORIB0BtpxHWiKdLwZJ+awyCeJqeuP04VIfpvxIn4I=;
        b=fRIOV1SNP+ipLWgaK4xZ+Pcl12uMdu8xv2U/3hLext/+FFMxsn7URhPCqg5ONMvc84
         /Dd9WBvEuB405WzJhW5E/ixY/AxxV+cBC6r7RBFdZGAsos77Nnjb9SIFqoG9HKOKBGpN
         lNkNQmhqKDiq25FB6lsouq6nKMVolRCbUotdcn2Hr9Xvw6wpV5aZMsBMp/WeWim2xlXI
         Gsrd842q5y5oDLIlEARcS9VzJkp7qdZstATgiL7ShlFHIMLu3cUi5cJvIugdv7PxpG89
         8Mq40pu5DgwjQfojquh9mmAOtfNH1dVDcthtOL/h3vjLQk3di2sGkjjC4QecDcibSmxP
         Sv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769172209; x=1769777009;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AxORIB0BtpxHWiKdLwZJ+awyCeJqeuP04VIfpvxIn4I=;
        b=Zc8hfVfHoS6WyzpbveTdPi7tnba+FDtV4HqMk1AJPgZ2q9dFDenowo68QbVGqCKOU8
         fyZ4wHeL4HYnsp4Ebpc6B71iAVMM6iCSKbrNP9tOyGBI24MlpjVud/cCKsUOvzHl/gvZ
         5GqlHDhs7lH69vmoQ4wnKwZoOvxm3Apozewt76vpZjJjiRlz0Qfj3/BgRQBEE+K3nBXj
         xwmVuS7HfH6CVNWnm36CGsO08Bc+PU2muIlxgW/nKrvWJ2I7hcd8THQ8SOuzWChV3j2K
         aoemnG6dZVldVb75b6UcMQq1yBvmbrGcwhBEVOdggxPxFkSUKkmwe14+S7sk0u/DVRO1
         4Ing==
X-Forwarded-Encrypted: i=1; AJvYcCU6W4td6lv+BwV3DmUcbPzFm/YTSnt7NsxUJzTL4fOvW7mKOf7jyVGsaE2edvaVohur3Y2CG5G5whMJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn/5j12B0Dk77goZwdYFDKBK9+eLa2qBt4rda+jU9PaoJccCHM
	XIqwY/m9L3DfPF5GHlydy2ftlMUyqIIYyP5/JdWa3jKipCX8chjYb0U0Q8Kqob9xDE6TV5TqHYp
	cyxII/X5fdUHOfvO8YjiHx94sb/26/HN6LyXB+PZAUO78RvqjEugx4e9qb2zJyxOc
X-Gm-Gg: AZuq6aIrgDJ89yJre9QYrvgxUlp1Vbjeq3QzoeMSasKXY3mFM8UTligZP//Nk/X83A1
	5+AaCGW0IIYsPEkeffm1Yeh2ZQkgruV0yEabCVqzAC0Apirqrk5mq5JY+bgvsUuszurYERy3gJf
	kGfmltNkJdDvUH3S5veF4KSAGQyZJ5gy8p72U29LiSmxYrr5bjriamlcoqDd8QPE51nsldhs2bj
	ZQTrkji0AJKJs4+nHoLguU4oFAxoti2w0YpkWDw7gMRQf4BGIPyRwwUhpjcjq8yMnAel7rtUR0w
	AfABxvvIGCsAzQTcGfNwkjqI4jTPycKfZBZyTDrJO6Hsq22i2tYgua4DCqKxfdrlMkmMhw6+ede
	UGpOzx3t4DOjpl2iKXQ==
X-Received: by 2002:a05:620a:4002:b0:8c6:a4eb:11ee with SMTP id af79cd13be357-8c6e2d865a9mr346542785a.1.1769172208697;
        Fri, 23 Jan 2026 04:43:28 -0800 (PST)
X-Received: by 2002:a05:620a:4002:b0:8c6:a4eb:11ee with SMTP id af79cd13be357-8c6e2d865a9mr346539385a.1.1769172208159;
        Fri, 23 Jan 2026 04:43:28 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e7156dsm6328543f8f.20.2026.01.23.04.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 04:43:27 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH 0/2] interconnect: qcom: Add Eliza support
Date: Fri, 23 Jan 2026 14:43:19 +0200
Message-Id: <20260123-eliza-interconnect-v1-0-010ff0d100c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOdsc2kC/yXMyw5AMBCF4VeRWWtCG9dXEQtqyogMaREh3l2x/
 JJz/gscWkIHZXCBxZ0czewRhwHooeEeBXXeICOZRrFUAic6G0G8otUzM+pVtJkyJk+k6pIC/HG
 xaOj4olX9223t6KdvCe77AUcSJG52AAAA
X-Change-ID: 20260123-eliza-interconnect-b73ff8523d59
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=787;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=xzYnfavGks8/Nf1wmC5RpoVd3setmpv2vyqC2K8AFEY=;
 b=kA0DAAoBG19EyQCVFVYByyZiAGlzbOui/3QKCRa6mfxjOLG9Mns4g3wbEHaj9brWkDHU9TRIQ
 YkCMwQAAQoAHRYhBE7z7hFOeo8qyqfRuBtfRMkAlRVWBQJpc2zrAAoJEBtfRMkAlRVWtbwQAMU6
 E8iA26+ejIH7ChaNPmfxoqqOExhj5C+1vdUubngj1QKC06wAeFqfiUNKnghJBblXw6/WGz+yp6k
 SwLdYnwCV3tOuV1tiaW790UZCd7ElGq1FdRYtdSxu8EIVmGyUopyCrZZt4cicFnugKGlxKN+Cu6
 zHhZhM1t8tEBjlJzUmTQ28xBVoFWkqzMIGIzKRZuKZcjK/IX/R1IeTKb58itCvWgVftGX6toFIT
 DDFqzQ5WQlWdqJ6CPnbu++oZhZgXYii/zVpO0w8fIJCwrW+AbEGkA9RSDchlqXgmdU8qSljbOWK
 /oLflc6P7Vr5qM1iAXLNWWYE68Kkw04ywfc1aRFmKTxLr7hNYXQJ43qkS4GCAQpj7qgYM+G1Xyn
 vva9ihSrVinZz5slmeH3/xfPNeKwCVPdYXPdusGegIgUYqZy/aG1sPA5H3Is8jT/j0WpzwenivY
 16z/0cBQVPaKLQ1hJVEYCkNUuOHbcjlkvjNZcXa0YMuRsY/OoEGL7h/PCxG0w6R1EPtLPRB+joi
 YBF8qeLgk3lBdw8fjsVniQcqXe+evodJtPbHYUunoSMgA5rNndZJc6R+CFsOI0BbkLXqZOGZluV
 u7o10kmR2+1l8hBqm/Lcud/VMSBjryWr3yZQgHYy4jVKu7kMmamhmiMhKGKbAS8MYg8UB3RY5XX
 P+RIH
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: J35jyyqvmNHW788l2NJ0_6gcb5PS9U6i
X-Proofpoint-ORIG-GUID: J35jyyqvmNHW788l2NJ0_6gcb5PS9U6i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDEwNCBTYWx0ZWRfXxCo7nWB/xhcn
 cJvRgNX/8ofQ7+esetl4fscSKK3fGtcoFbpftB5CUlCiE+eNDY84Xg2P2aKOwHm/vQWDlVUq6lk
 4yhpMOkrNI7P9QhNpXwyDC9aP36goji8lOf4PsDIpNWkYDI1tqlPiv9lqO2V6/nDa5bHau0jUDA
 iWD/QBnp6dsfdIBdqqCeB0/zwm2H3fGlz9ac0fB8zajwjqWv6Q2FX+Zd9me6XOeMZU7Gf/7UqoL
 Oc3fpScXHiBgH8AsIe7R1YSPxXbVMi0IDQ1i7a0LD68O0NRy8Wh4ecz74G8cunGclJnOZ3aa9ls
 rog8zXD4NI2EbRPTM+UPyZUGnHCaU55PsK5bpXb+oc+NatjIMDIPI5NQOAC6TneQlYyMQcx/TzS
 +WWRHupN2GmFn9zfirORjjz/hb5WnHzBMKPM8iOa4QKbpyjEQVMRfJAvbqHBgbMbrT92k/jqBuP
 vmlJSXPLVPsdSiyqEHA==
X-Authority-Analysis: v=2.4 cv=faSgCkQF c=1 sm=1 tr=0 ts=69736cf1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fb9xB9F8OhEh96VwyDoA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258933-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 64DD975F10
X-Rspamd-Action: no action

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Odelu Kukatla (2):
      dt-bindings: interconnect: document the RPMh Network-On-Chip interconnect in Eliza SoC
      interconnect: qcom: Add Eliza interconnect provider driver

 .../bindings/interconnect/qcom,eliza-rpmh.yaml     |  141 ++
 drivers/interconnect/qcom/Kconfig                  |    9 +
 drivers/interconnect/qcom/Makefile                 |    2 +
 drivers/interconnect/qcom/eliza.c                  | 1586 ++++++++++++++++++++
 include/dt-bindings/interconnect/qcom,eliza-rpmh.h |  136 ++
 5 files changed, 1874 insertions(+)
---
base-commit: a0c666c25aeefd16f4b088c6549a6fb6b65a8a1d
change-id: 20260123-eliza-interconnect-b73ff8523d59

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


