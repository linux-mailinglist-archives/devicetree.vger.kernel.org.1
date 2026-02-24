Return-Path: <devicetree+bounces-267798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN8eNmF0nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:50:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61195184ECD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BEFB3055C4E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2D9374198;
	Tue, 24 Feb 2026 09:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jh8oLH3x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MOTHVjWi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BDA372B40
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926602; cv=none; b=MS2OQ9e/z7uWehWjqTOpvHqODlBQnhipcPgj/PG1/tst7EC8n3/XSh81QEMSrae3tTnz1wMqHNYYe3bWX9mq6hBGjWfQjdm+XtpyVznNLf1aDX7LmBEB8g8C0IHqdVYRd+K7hQCNNcfI/loUnLhAt6+TwrXdzGnXm9nGDszQ+pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926602; c=relaxed/simple;
	bh=JmCKMSZ99k52JgM1yUT7vCu4cn9pkfemr21UsbLLGFI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bbzIZlh+P4jSC2MFwe1de2TYlqQhO/849W79dbUld4Dgdxnx6ZytZn6/Bm+gbOOUODU9k9I3qyhMiVU2SDheAJ5xTyuvagmqUOQEakELXJhKxq+jah0M7biz3BWs3E8A6RuJnDGE5B9r+E5n7wRi6uRlMmnaKCsA8UbDmvtPUgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jh8oLH3x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MOTHVjWi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4M6al2571165
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oY8+PqH7o/csX+69/fLbUX81Ekr2b1hKUFSvV8uMb9E=; b=Jh8oLH3xv5LA24Gg
	jcMFHCAdwUqoW46MdMY2Mx01Sm/EPmkQ+u9Y21GeNVCxE8YUhklzu8ipiB4+Umvi
	DYe/iv+LebktC4yrqAxT3T8Q16obaDOXLUQSru+GxnjDH8t2tQb7WMk9KHR6fiYd
	174zrI3StZdjWinYWirEFvXDTphORbfXZzrb9s8eX6Kl6hURHA9knBzH3KrG9f9K
	Z4t863nXt9Roxt0ZHodh6GX7DDJj9yEheooJfphloSG5jAxguptmgPxaBFEh1R1y
	mWCCMTJvgZxUY2w9bdYsDeXZDj7KsUPaa5GRs5aUgHdzwpEQNxV8MJ0I+UeeU4wV
	942XKg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y3ra0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:49:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70e610242so4869842085a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771926597; x=1772531397; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oY8+PqH7o/csX+69/fLbUX81Ekr2b1hKUFSvV8uMb9E=;
        b=MOTHVjWiF026CmpkoUmSj3IBpiopHCP/J8ufvuu6vzBBZHvF+2w1ucEJWk8CdYd6NL
         lmwwz6IXqfGtHHrX6fupVT9j2Z/HkUm07Bgedp/phO2L/5jeZrMWpCXYY+aCSIfoMjwk
         wDUr+/asycnEetygtcwqjcRTjFqOL9Ubi7Yrig/q2eelhaFYkdMqNwKX/DvTIKvj58e9
         vLX+Fjv+bhDKOTB2waWA9JvGE6eVFlfT3KIRiJsmwBiTrIiC3KoxYvszr1REZjMI5jmH
         CvT8b0wZZTv/BFgvIc/Lr+BmbwtLHHO6g8MLbBpMYvosskgA343xJ2w7JdVxe809KZzJ
         eD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926597; x=1772531397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oY8+PqH7o/csX+69/fLbUX81Ekr2b1hKUFSvV8uMb9E=;
        b=ltZPCFkQTMAo0shyineY/ufNFjyjYMRMa0XU+uEr2ngKao8gv8quDEMqVE2o/M/2IQ
         hcg70d/I11N5pDik9HJYrTZL+ppOuxExbCIgXmztTX0IOnETHYovKGKWcl7Z6wB4GHAk
         RcsSxAuHgJZxzC1+NV7tqfe4Jv0pG8tueDMXJjMm/E+oObC1JpaMB0XYayzf1qRi0op0
         shGRu1XlCiO9o6d8hImsq9BOV2NV34B2xRYRMZoXqtxOfRXSfdSWI2Z9dqEONI4TtrK1
         382daT+KI0GNy7KhFN/t0TpceMuYXE0k+xN4TLsZlZqAPnFyD2A4i3qa8ENc6qfgsVeI
         AV9w==
X-Forwarded-Encrypted: i=1; AJvYcCVyzu0FWrQPEK995yCS7OpPz6baAmSBBz1ryfXLPXsHEFv5i+d4dG3MJ17PRafNZn8Ou3PyAXiommgc@vger.kernel.org
X-Gm-Message-State: AOJu0YyYRWx/tu4MLCSWZ/Ha37GoW1ZFdUKmmCuYey1umO2OVw+O3waV
	bJV9RDME/QXj8HO2cxaBJiUfEVWmuUWeyJK9Yal7q1nJkVY5JJGCMENnp9Ly3s2KdFR96d13QE6
	4lwrZIUf0lCNN/JZjCixMmw6Xi5QHvJL/NXvVNTJdYPDUep8lVcdSEpP5fRBBPDvI
X-Gm-Gg: AZuq6aJLkNjwJITSDbiOEpaGEjm1CDvxiWNVRAv14mWLI6T0xZrzO57zg0ux8hVE3fZ
	R6Vs8vDxCtkGVCFJrBD9wC05UxjKueFzdmPLNbrXqgJG0Ri01lIl5iBjluEcMm4JPyQnznpA0ZV
	pI9AeMp6z3t8rFYXjuLt/mUcKMqRVEfEGIs76eai4GXAECq6Tr4geBVz24gABYYkWnJD9CbKvm7
	lrtuRF0xGtj0l42WwHTlvRyyFtsnK7k7mnRn9X+m8g3kXEcmN7TbwOOO2R28FROo6ZjxKuC+n7+
	gOsY1USMoD6+tuu9zSEyyyeV3s16Fa131tg+1LTkVUfDUjieTqU3cIfmqBYvi5dpyRgotwxvjKc
	/syZd/K3/GUehcT7ubhvw29AgEZzp7A==
X-Received: by 2002:a05:620a:29ca:b0:8ca:41af:32d6 with SMTP id af79cd13be357-8cb8ca83227mr1557566385a.70.1771926597216;
        Tue, 24 Feb 2026 01:49:57 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8ca:41af:32d6 with SMTP id af79cd13be357-8cb8ca83227mr1557562185a.70.1771926596456;
        Tue, 24 Feb 2026 01:49:56 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d3fdd0sm25912206f8f.19.2026.02.24.01.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:49:55 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 11:49:45 +0200
Subject: [PATCH v3 1/2] dt-bindings: power: qcom,rpmpd: document the Eliza
 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-eliza-pmdomain-v3-1-6e13d3aa70a1@oss.qualcomm.com>
References: <20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com>
In-Reply-To: <20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=911;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=JmCKMSZ99k52JgM1yUT7vCu4cn9pkfemr21UsbLLGFI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnXQ/IMPbPQ3feF87hnK8THL0pKDNMKVaJw9GK
 89QdlCN/CqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZ10PwAKCRAbX0TJAJUV
 VoWXEACahivmdMAFXGL4lnKmzb4RhIQmH56AgDbtktlxkAKBCWiUxjsyJay6wCbg6Vw5RUoVlKG
 mxm2468Ue+79+Zj35ALqnZE66kqHXpn2gSW9oMmCfGTxD2mHZIft+OLaNDPmTgc1L1qCXgmdIO0
 6Czh6g0bpbS+Awi/bAN578gAxrnF6u2ja4zqB2yz6LG+Cp8M2+J4Sc6nEhEe+ZRjdF8Oro59jvE
 dafao+Ig15af1DKdI1Hna2p5+8mPtfsGrDMcw5RNaPejj5/MiidwueR6i36teafp8JRxsnPa/5j
 yf53MsrwQJPhMDS84MSHO/Za78AjAMI5a4669r0SsI5/8W0T7Y/EkYVlEOsDwuKTaqiCTqFzu+I
 +RKBtXzNqYqUJjdJHivAUizWXZlNlKH+6GpiAt5D6Vtt2JMVJP3I/+RPaw34yOaUk0I6sr8y3Df
 K5wAV0oeNiN7ORwZpgX/5FkavmE5tI1Pq9Fo8e63mlnR/q/uAaoo0t99NN9U1OkhlWb+EU24mjk
 JvscADUlHn07FZ2QqLjADfHfTiKyGilIO8WCsw4TtzSqmeRDyKG1khEL+Kq+5kNTygVurey/bKB
 e64XsP0GF8gW9O3jD3MXmuMWfPttErapxhKPz9PggLkmPtSFQ8kl+L4yRcv6RYZM+/teJ2bB0eC
 U4KCHwIWxgmXWdw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MiBTYWx0ZWRfXzeIFyLneqK5z
 ZAVXgJfj+PglWXBlkQO1FbW0bzmvETeC85P4jslAeMUVDU7hWhELUwJX/HeyyqzNaRGG9jKo1Fm
 I/+vDAtdhgCLnyOToWAwPDIme/ecjB7k0ZpBFgwnqodjGSi76Bvc4pcIeL3Vw6VjtuXoIePBYHw
 G7hiCFPbl+0PwIdeKA0ksFJ0Ep7vJWAwcS8gbLgQTcWkcBvS/kFlpa1IjUxDEsC/3xjokQVnd6H
 ZgLC5r/c3zkDDHfcR9XeaHOWb5FiPH5YC4n3MG68qUZ3/dqTC5hDfqmtfkZ/52+r//NR17JdapQ
 wVhRATPabgpDXu0+fT96OcTe6CGuQh4DQwvHO7TcnhdHIONd5Hqxi5cSxdK417mSdAocEmSgGcA
 GLs4FdqFKeLcsr9N/y27c9WwJlIaXNQSBm2J3ro+fTo8eDjJH9B+gU+hUuj2N9NGc0auApYDMls
 w5/tZVJSozYxT+Nq3JA==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699d7446 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=-qkovbBEdaU6HcigwZ0A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: vqarVanc8W13CC0J2jFvpqds91YcsU5F
X-Proofpoint-ORIG-GUID: vqarVanc8W13CC0J2jFvpqds91YcsU5F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240082
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
	TAGGED_FROM(0.00)[bounces-267798-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 61195184ECD
X-Rspamd-Action: no action

Document the RPMh Power Domains on the Eliza Platform. It is not
compatible with any of the previous platforms, so dedicated compatible
string is needed.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 27af5b8aa134..8174ceeab572 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,eliza-rpmhpd
           - qcom,glymur-rpmhpd
           - qcom,kaanapali-rpmhpd
           - qcom,mdm9607-rpmpd

-- 
2.48.1


