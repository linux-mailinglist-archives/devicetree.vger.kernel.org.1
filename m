Return-Path: <devicetree+bounces-271833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ9zA/t2qmlcSAEAu9opvQ
	(envelope-from <devicetree+bounces-271833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:40:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1180B21C245
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9DF31300E695
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 06:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A57037189C;
	Fri,  6 Mar 2026 06:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MHYD13dl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B4/GSg6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D385B256C8B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 06:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772779251; cv=none; b=Up6DcbNtLNohLzTyJKKYNDQUfzUvutNJPd0J6E7WfkYeKPj6k6f+Khjwc+WokYrcl8GkebhLZlR0uyZcIa75Imwf/FiWwmdYHon/WNA37nf/19+zURVNcfP8xV498e7utwIOFqogObFTrueOg3u+I8becTi3C4QkkO7D8FNN9AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772779251; c=relaxed/simple;
	bh=6nWG/KSuzTSbbk25w6qpMlZyqeTm9D7mMT0R7Dslooo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=FtWHWRYJZhvBPH7E1yyZ+oOv1LQUBJfxgOIwYkv1s7fXjs8HgrSA3OJt3kG4o/sVQHhVrr6HxMLZL3eOOL5U6gBfQcPQ++Hg+frGO9qS4T17e8ku9xPQl9vsPkHqPpmDoihYnW3lDdBBwrdp6knFeYCuergYoGeTXgDE28MEj5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MHYD13dl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B4/GSg6F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264a4Xe3296740
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 06:40:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=DYUjo0Q+n1DOSSP+g5iqoj
	l9pc8wvDTLKORng6b1Qpw=; b=MHYD13dlEk4DDI5ip/4ejzCFI6pbLpulv27Wpk
	XllVKK2zHv6r+RC7q43wZYMMNwcljCLqJxrPPron6NAqWNBDzvVYwuRAKC4MSiuo
	SJ0QK3gMhMxldNNSOo5U3as+MssdfBoZIW9oK3Mot7GSZFHNIy29Jv39iv05RM83
	mYboF2HzqMrO/Vz8tB4KbH9rmuEm1XGuP6N7Kcsl1HOnKaiI3FX1SDKj6+rjznti
	3AmHyMTirHP2VMXn26DWaUmg93D/T75GM6XulNo6CTyhzxUSTm+6QnJWfbKi51t7
	/AkBQwtRA1WHjAYELvwU4jho6AvZuCrfMdFvsvZR8nPbAbmw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqpxdrjb1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:40:50 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2be21f89332so4024136eec.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 22:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772779249; x=1773384049; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DYUjo0Q+n1DOSSP+g5iqojl9pc8wvDTLKORng6b1Qpw=;
        b=B4/GSg6FjxmElzjElYKxTbe51/uhktmlN6s8SR6bRjb/9k9DSpeQeZpd8uU9vwCI1+
         Hfrggzkaw/iZqhtOxuDtE7De+Qvfb2BzSgU41bHZV2wYGUeRNFbdAeWAuEGw+5f5AfHu
         lmki9ZTPmX00/DPrfgVaDhk45KGmNyhzX/p30ulGhfZe9Sv3hjuv0eOW/N/xyxxXkbTY
         KD7nDX//rVDGODrmux/3kAfYlSY/joolEQ559XZN7CAH+yHPuqg5+TcgAxHQhF2OfWGu
         WxZHqKLpWDNtR/m3oSvuSDnbPWzHh1d+E1gPlWtRB2pY9V3Uol/Y5vYWHyeuE3TNNtgi
         j0MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772779249; x=1773384049;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DYUjo0Q+n1DOSSP+g5iqojl9pc8wvDTLKORng6b1Qpw=;
        b=BdDwy5jicGQ17Rwl+kqsCOftqCOzuwt9j31SiA4OjNexMb5j/dDtjlrJHkSMlFlJdu
         71bLZzxDVZfOhtFGdCM7on/42ctd4SKpAuvMeRm/kVjThoaAAJ9/TnF8cNZnQgoKnn7M
         Tx/dwEgp3WSMtSWE7QeEtpSUzODCtuuJRzyVcsdyaCqJoGwSKgjYr8P/Uem8cP5sJPI9
         XN1MtAzZl+E8//5ipWr8k9yqseQzCHoZ9oPG6LA+VzewBNSJHtPM1lzXl3zrEtqpBNvN
         M7Sgw2Xi/u7mUibXO/6YvIu3V0bVIwaV9z2rL/uzYwXpn0lF6Di+Oey2ztFdvJ7RZRsc
         0nkA==
X-Forwarded-Encrypted: i=1; AJvYcCXmFu/0a3n0gveav5cQAfd2uVTLJzT3T5ChEjW5Kq6tYzNYgLqWzBVaGC9BsROqHyjadLFAu5SPSaKN@vger.kernel.org
X-Gm-Message-State: AOJu0YxvzbiU/O0Q789e9L2QqFOa4dzhqz1i4xdvt9zKymWfyMyHnGtl
	Ft1FtHUuQ3ZGg9TD7y7aoLu9cjroO3PTsW8jzrHEO7v9b/gSyDdjiK4qIwVW6bo0UffelpD65mC
	DpyJTZCcu9XeoIzd5JteDcciI1jMoJyLLNjuLeChQxDblFtzr8/XoIDg80tq5ujrc
X-Gm-Gg: ATEYQzwtypc4hC57wMbNNJofFQrIdsb2bPP33s83+fumZDx1OB+TVVpcvmFhdMcv+SY
	wXc5++Aj8rMwHfCXxAWyc0khsh8dMB5S52/YAB06ksihEkTzrT/16g1TKFcctM4jWrrizUdMzFv
	c8xUugpDfA8pt9k3AsbOZyV73qcFhZ0bw9PEbc0lrrqieK55yxJvVKFOy1xP51C5Uq/oWgl5uaP
	gs+pVilFuRtH4UmXILa+whN8Iwm9MJVVALyyX1cJhzBq2Y9sENZ79bQNdpQKW4iMoMVb4aj7Kqe
	ouRFbEugiZtRZq3vgGUDTb9ouYJZ6awkx1YFkNH/ItqUVG/J90IUhVFAX2I1AeSmMiq2k3cvzFw
	hNV7eX64uvjiiv9apmHqCGv0MfTOAe9uSAwA3E33I9i4qAoWBX3vTzLrINqfKVehaTDuCk0qv
X-Received: by 2002:a05:7301:4188:b0:2be:e4b:60bc with SMTP id 5a478bee46e88-2be4dfee268mr439420eec.9.1772779249236;
        Thu, 05 Mar 2026 22:40:49 -0800 (PST)
X-Received: by 2002:a05:7301:4188:b0:2be:e4b:60bc with SMTP id 5a478bee46e88-2be4dfee268mr439417eec.9.1772779248694;
        Thu, 05 Mar 2026 22:40:48 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f94833bsm504625eec.18.2026.03.05.22.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 22:40:48 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 22:40:41 -0800
Subject: [PATCH] dt-bindings: nvmem: qfprom: Add Kaanapali compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-knp-qfprom-binding-v1-1-1b3effb09cad@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOh2qmkC/x3MQQrCQAxA0auUrA1Mq1baq4iLmWnSBjGdZkCE0
 rsbXb7F/ztUMqEKY7OD0VuqrOpoTw3kJepMKJMbutD14Ryu+NSCGxdbX5hEJ9EZiTNzT3FItww
 eFiOWz396f7hTrITJoublt/LNBY7jC2lV/pN7AAAA
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772779247; l=983;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=6nWG/KSuzTSbbk25w6qpMlZyqeTm9D7mMT0R7Dslooo=;
 b=rKySMmnqgOLU6Y+kNNggJctpZC6nkusPOEeT1VTg+5AF2hJ7urOTJffLpbEQ1zR+Q8dCG1ucd
 sZcNKyMiApICMQcxBzevzNB8/lrK13/yunq9t9KI9RDEBLRsaCSezp6
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: ugKoM7zQtlTC1LFC2OX0VNNZx2hgS50m
X-Authority-Analysis: v=2.4 cv=E83AZKdl c=1 sm=1 tr=0 ts=69aa76f2 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=6F5sZE6EngcdS_TdUhoA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA2MiBTYWx0ZWRfX7lWJG3lvtIcs
 CyzcdVosCwCOTdPMvymuPWNMx8462BYeQUQi2/XT61AN7M5fgW+aLK4cIcN/kc2p3NS4zkcaNlY
 MF2VRFnDG+g8sDvDzlOCcwrW3/CTN8z8bkAX/rAOqzAD3RZyEELEpNqAVEfjQ40lcI/EGNNmkS+
 eZYnqFi9d1HGUlF/G2r6GuKhey7ut9u4saj99Lvvo9ldo/YNBHxfm5akoQ8RR/jA57MOFJqJQNJ
 UO+xvRc9v+RuPPlMBpLykLagUfz3oThGTVIe66UoFCr5BK43TEDiie04avFzhoYtAtA6H1Cbl27
 bYsuNJblcrRvcxajTruub7u0+iIwjhBA/ns3kvWDL9GCBVmz5OP22IJrxYcdgl6KlNZgOtVYpO+
 SJbwovqn9+IRgtwwLVS23tMGedsn5X1k8OMJ90Xn0tZflSF1s3/VvOkhIPivIqmnVn6K+v0Z9m0
 FQNTSGiQ1j1O5S/UE8g==
X-Proofpoint-GUID: ugKoM7zQtlTC1LFC2OX0VNNZx2hgS50m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060062
X-Rspamd-Queue-Id: 1180B21C245
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
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-271833-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document compatible string for the QFPROM on Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 839513d4b499..2ab047f2bb69 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,ipq8064-qfprom
           - qcom,ipq8074-qfprom
           - qcom,ipq9574-qfprom
+          - qcom,kaanapali-qfprom
           - qcom,msm8226-qfprom
           - qcom,msm8916-qfprom
           - qcom,msm8917-qfprom

---
base-commit: fc7b1a72c6cd5cbbd989c6c32a6486e3e4e3594d
change-id: 20260305-knp-qfprom-binding-efcff6ea9b7c

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


