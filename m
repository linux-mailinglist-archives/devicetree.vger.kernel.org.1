Return-Path: <devicetree+bounces-267299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JoOKfoSnGkq/gMAu9opvQ
	(envelope-from <devicetree+bounces-267299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:42:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 500F9173334
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 577B2302797F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB0E34D904;
	Mon, 23 Feb 2026 08:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kkYhjG8u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GNYgay9a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468C234D4DF
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771836132; cv=none; b=nJ0tXJr3YzC4hsysMI0VCDa496Z2SnCKc5qSH+WkngmXL+OvhtIDVAHw+yi5qp432XKJWJdeK21dTki1xdQLZiqg32iySmVBJQDyyJEpqRLBizrfmf+yxBQsB7TaFvTDhkKbPbCmCR3g9Kp/ymUNxq/RA3A/X6Bs80azgCTFpFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771836132; c=relaxed/simple;
	bh=wnMxezxFL0fRAH058ifkrfbw12QEt/o0OXRwGOFz8Cs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LK4cUaPaSf0QxsPw4a0QBt3JaAy0NIBHMJQA+KpgYQzJDeZHndCG50hQiVkz+vCnmNYapJMQOmhBCSmMZFhqgQMMa2n1MPi3sVUHFAKEp0PAj27w1f8UH6SzdFxoSwRwGlDZM6S8JXQ6Lh2cGn9QXW55B002Ax5mIy+NFBUQhy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kkYhjG8u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GNYgay9a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMkwlS1483271
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:42:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TylUq6+O02OPU21bfkP5pd
	6pQ7bZwTV31SBEmkaLAmk=; b=kkYhjG8uiwDtFDhxiNVofDeLzxFOSlUKnwfD+A
	ikr/z8RCrazhQd1MZidiLu5CdeV7SsqsQPwQ6D5enHRPvS93VMDEs51xPsVJUMOB
	HWpxWPx1My6jlwOKu8atSHg1/006UBBiKqEPg1F2bAcRPSDKCZ8byGtwn+pNoiin
	8mztA3yDeNZnM8uGrVKvjaBBxRzYE5Lz62g0pOksrf2ZJH2lgqiBxtjznMGlvJN0
	hmlohnuL5kFVYuOGqNrkat1PopzYk2dVfcAgkUlBARZq7KVF/6eKsAnn9rUN8+wm
	ewRy0nRScSDpAyPR0Yhwe21gzqhCSRnV5cKDi9G/aGowgiXw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5x7v10r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:42:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71655aa11so6352762685a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771836129; x=1772440929; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TylUq6+O02OPU21bfkP5pd6pQ7bZwTV31SBEmkaLAmk=;
        b=GNYgay9aG7StM7nQyP2CM8mLCnsrzjAVnof8nE8Da0k+DkH4OlheXaOaHlAtBAFbq6
         gb0S5Mq3nT85JoD2OptRX0kANvdcqlrolOVEt5RLkcNuqReOnYZKhatvsIWDr1vNXBoZ
         BEZvu0LgYt6+zrK+/aasc05ds/W2ZFF6fqzhStd9zxQBMTr4Y6q3jq2R+vcwC1j0eAdD
         g5KK2Pxqt/SKekhQvfi/MDFIH3Con2/rDjx5+gacP7xmgs99V2f4IxfURywxxYBFxGyK
         +p2ok8OjZGtO+BHBOJJDOqy611Gl2dFWqK2mRvyyVFnizGZHBr3R3Z6l7cAks4ayvm2l
         LLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771836129; x=1772440929;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TylUq6+O02OPU21bfkP5pd6pQ7bZwTV31SBEmkaLAmk=;
        b=Q7qVR41jfwg2SIFbpwKEbys7n6ZYfzr7EYmLqsyIkyR6flAy291DtkN4JP1I86gGxq
         ad9voKEcTg6/glf359pulhS7Z7TcvniUSXxfNB+eTER25daH9sjEM7gIB5N+bnFkoBny
         NutKxaFr6QnswJUHRSE0DZRXTl4T2fsueIsHvmF7zGlhruSwIwCkIcy5Y8ghOdNQGfeZ
         +fP/VHpWVMRSuzpWMYP7pb3H8lM9PfVG4bA5HG26zbCJ3Nix2bbbcXAuhng2QRLjCkza
         cdwBf7dwswkXl9t6RAv5WStnxyyS1bo2nqLboUauds3KDhh8AN3HIa+GRh+aZXBC3XwE
         K7xA==
X-Forwarded-Encrypted: i=1; AJvYcCWnJWxoXIjrSH6RoGnKgns2eRaHasMWiWYWvX7LN5usXh7dcEaldRCHT9HorfyyGOEksCubMGuK8mFa@vger.kernel.org
X-Gm-Message-State: AOJu0Yywf6qRpzklHOZW5B15+iW+U2tmrtmuo8H4pdiF+GHulaLKfPpO
	/d7TxCGCD7OUliXwhvtyYxhL2D/Fk8cd7yWkO/BqkS+iSNbi0E808C9CqaPtdNlvYIuP7DEnNET
	YltXMF2M4z3AfSU3Ese01jXIaSA4Wy75Fv1/uvLrYsNVwLx4liLoFxePY1GZLSt0vQq8Pwr00
X-Gm-Gg: AZuq6aIGbkO0wV2lgM3OVuHDXONe062uY/JYXsKH9Zbe9mN1R8hrh/N7cgQI4lGucmM
	bQQfsJOFTIwv6pGW53KVLwuP5Opy8uOQj/vXImt4LOJQlTQ9b/xi1hdYeZY1HCEASRK/BHlobuO
	lqJCRhgVahyAx7WS5Xi+qL0v/3c47bAR1ckGwZWbfEs69nRuTsirnRcq+3UvsTxCzSdT41ICWTr
	/3XvDLZ44yfGVjmE4aDLB5MU5diCYtrfvuVqEJcU3W1w9/hiIzcOf3YR9S5b6GtTsotTFhDniJ6
	eRPMW8WEJmbZ9WbN4Chw7hwcDd6Rm2BMoP0Q62qtZGc8U4tWvBTkNOgrmF9/6L7w9c8Cn4C0yr3
	4k8d68WbK9zqh0u+DrjRffRl0yiSihg==
X-Received: by 2002:a05:620a:480c:b0:8c7:f61:fd77 with SMTP id af79cd13be357-8cb8ca7fb92mr1053206285a.58.1771836129309;
        Mon, 23 Feb 2026 00:42:09 -0800 (PST)
X-Received: by 2002:a05:620a:480c:b0:8c7:f61:fd77 with SMTP id af79cd13be357-8cb8ca7fb92mr1053203885a.58.1771836128789;
        Mon, 23 Feb 2026 00:42:08 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54a73sm18813457f8f.37.2026.02.23.00.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 00:42:08 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:42:02 +0200
Subject: [PATCH] dt-bindings: firmware: qcom,scm: document Eliza SCM
 Firmware Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-eliza-bindings-scm-v1-1-c88643112dd4@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANkSnGkC/yXMQQqDMBBA0avIrB3QRAx4FXGRxImOaFoytpSKd
 zety7f4/wChxCTQFQckerPwI2bUZQF+tnEi5DEbVKXaSqkaaeWvRcdx5DgJit/QBG2M8zaYRkM
 On4kCf/7TfrgtL7eQ338nOM8L+I6vU3YAAAA=
X-Change-ID: 20260221-eliza-bindings-scm-7f377bcaf743
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=924;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=wnMxezxFL0fRAH058ifkrfbw12QEt/o0OXRwGOFz8Cs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnBLeqMwimWGj4doVq4ROIUAOZaDtuiQzWE3A1
 24x6zeA52eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZwS3gAKCRAbX0TJAJUV
 VvgSEACbUy/4zRqUuUBLIxPxipzzvMdizE2cMk20UYqNxmniixWfP5DU/cC6edvTxIYK5xDK6K5
 yZy+UnpCqQIzbItVJH5wzqs9ufzIAakXehH2jllsqX1jsDK33xoyvQCjoaRyMeVluX207gM7bsQ
 SbvkrzwMF0Jal+LE6ij5PYgfCJg+Y0IRVYgavvq/bayNRfKZ3xrIPaNpjGsnqEAvBWZ3OuMnxhi
 Afo8/DgG6lSxRpHrOXXId8fRAtDi4GIObFh+WRJM6IoiDMQ9padyohDBHMriUoNPlBlp4tMVGI2
 mgssif/dTDm0UlMxDCvglSRjQs8anMcBz19pAQ0gXGeq2+Htj1UgzBmMbdS1AQd8aJMYycYzyzZ
 atldgguZouzccyXDuaqwV/viJ0tqDbmaqSgkChp9FILQ/gUjq5kWVH5pji0pkNGLLDjV0wofHvd
 USoLGEreognDatMATXGNk3e/N62Wf3YSUznZyWk/t/MLwfibIbbLOXKI6khxK8s5ALYVKwzUI/o
 ySb/H8mgVemCqhWLleKFF4OoDfA9p7nXiFrl6/ZMDm21fFbN5nDnpp+EyJxY/io0HvOtB8OyVqT
 DLY7W0UEF2UNmfyR5r0zp7X6HWetzxgSriU6MqZbNctHrNVgLI8aAqe/o+s2IwLUNETn0B0Rjjq
 +iXoGgo9uH9J/xQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA3NiBTYWx0ZWRfXzSTjd8+YJ9Da
 jttrGj6N/Cc9Jl+9MrshoWtWuYneYIwNvv/pzTf7xtXVVmpZXQSTmY6LXZ2yseLdaqGqfsyTYEb
 +4p6Hh6cRmepCsTvYGyHrOIUJZ0fQqThKS4aflbZ/f9/WSIVHeF8BSByyxoADxWlr3F26QFwVxL
 VZ5G01kPXVaBGcNLSi/hLL8HiR+X11bruGH5WTGJONpifHeSi3r4ZXreZRmVDP5wDhyJBj1iHgI
 SApYLnBwuWuTK6oou5TfQhHv4YY318tbkIqpvt3Saq36gYbT4Yswhx47Dyjhv7CJ7fqenbtF9Vl
 xBAvGHfy067H69bpldAqMSa6DjKnVeA1dkE0X6cLRN4YTctpmdgVl45IJ3vFhmfqnYz+vsD0Sny
 v7o0h3U0TCSnW5jw91dcb40WNR9kTBS0Ww/asJMvPITmmEh72l2EPCPa7ygjmShIsRPpOCkGMy2
 2Fzf3jFjG9LgyYfqPeQ==
X-Proofpoint-GUID: Z1B3nOpG70DRBjDyEeU3l9eEnjkG96Zs
X-Authority-Analysis: v=2.4 cv=X71f6WTe c=1 sm=1 tr=0 ts=699c12e2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=tkk6spPiDxKKoEEAGxMA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Z1B3nOpG70DRBjDyEeU3l9eEnjkG96Zs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230076
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,quicinc.com];
	TAGGED_FROM(0.00)[bounces-267299-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 500F9173334
X-Rspamd-Action: no action

Document the SCM Firmware Interface on the Eliza SoC.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index d66459f1d84e..5f6a6b165b82 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -23,6 +23,7 @@ properties:
       - enum:
           - qcom,scm-apq8064
           - qcom,scm-apq8084
+          - qcom,scm-eliza
           - qcom,scm-glymur
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260221-eliza-bindings-scm-7f377bcaf743

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


