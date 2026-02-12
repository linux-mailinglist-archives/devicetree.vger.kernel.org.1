Return-Path: <devicetree+bounces-265132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEEpC+r9jWm0+AAAu9opvQ
	(envelope-from <devicetree+bounces-265132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:20:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CE212F4B9
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A46830767C8
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EABBA337111;
	Thu, 12 Feb 2026 16:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iu5ZfGkZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cib5lilj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945AD2DC35A
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770913219; cv=none; b=FlLs8gDHKhfvPmooOjpdHcHHb2R8H0rElmXrIhIe0asgGrUXyQaA/hYYIP6uHPeQkc7aUziBNCGPlzuABRtM9MJsNLCay5F5LqOJyngcSrKUTXRBL5HncaIh499ViuWPhC5CWCjjfvWg+EBk2hb5Kff24y2lrvTlwQ8egQeTSnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770913219; c=relaxed/simple;
	bh=TRLTPipXv4v+KxXfbm8DrsJEY9p4cLhTYGU5J3rwR7g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AByXkVK9lDZcMUcPmFwhIw+P6tT1QSIDDDcAFNAgAR7XFpZ9ls+Lugw1unuQ7f1BqtjFpAhWCWhlQpf4ZTbiuYp/upAzYo7zV4GebavCjPNInVUy4iwTcOGIyz8e8RdhxEldEjg7IiVQnaR2ZQd1bjGJgeQM9QbEL8YBi6pDyug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iu5ZfGkZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cib5lilj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CEFp5Y2121145
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:20:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mi5u0IHjuTZOX7odZMNHAm98HQb5d2Af/uN
	afAkI9/U=; b=Iu5ZfGkZpfJZp0DZyKXsSeEvHxuorbYN/MF3n6LZT8iwmel2vPj
	pznoTnBtuBAE5gvQWAv0FUYo5mv3vKvCyMJJ9KTFSF9xrQ8I1gWA43Mw/R3fRjU8
	bfXjD4TewtYOKEEetMiJOE5TEdX8YiSzgV43VEmiJGRxjaaVEINoJU4/quMtJWgc
	TO2lgaMJ/ztnIsxma1nGog1ozQtjI1ZF3Nu3Zd1Oh9j00mW/81FaEUxFcezAn6sa
	Maz2mb2RB2Vu2ik+gooL+LoGuazEAzwbfqAMzivy6jpT0Gre8vWIzWrAb68a/Z0n
	zFYqPAv2AEyTz1Vk0aTVKdZJ72Znlomgrvg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9gfm0f0d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:20:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70fadd9a3so22949785a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770913216; x=1771518016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mi5u0IHjuTZOX7odZMNHAm98HQb5d2Af/uNafAkI9/U=;
        b=cib5liljXsb+f4lyIMw5Lxwm9U9OjHdaHEbIn62Rg0yybbo0NKiprSE9KdBOuThAXF
         LHz1S7cXRQqCj2/Mm7vj/tYq8R6czb9ld0W3yE1P01MpVrQ3kUgwuIPq8L83AZ9LWnbx
         bOBf2PhyenF5B8728LWvSCytVYr7i/RaOllZDxaccDumAv1LuTjf1FaPY+Nos/cMMxKk
         TFHgP9dnW/No9tFPmIx0acrbegaaOtpj/sGOI1/TxMbR05AnHiefDWYZvldDHJSovK9V
         ZiFvmUy/UdCvLgLffBIlOBtduDgVC5BIq+pIXV/cCZaKWaxNbiJEQmE1z7rU3NdKBPPQ
         kk8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770913216; x=1771518016;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mi5u0IHjuTZOX7odZMNHAm98HQb5d2Af/uNafAkI9/U=;
        b=r++ONUEFo0riLBtpciuvZojg51CriG9OmB8mT58oUTYrBueRnViLJpK0IfBGfaX94n
         UeTmcnuosdq+j1KkNnhzOZL5fCAIlBvcluW0Ppxyn3EOeQFqSVFtzBYOjxpC+fYP4Sdn
         UBWay27HIurlKvyovDuhLRwCeu8MW57bo5gbOA965QrpMDKfaE40rimUE+T9Luch1VrF
         3u9+uDHVeTFBZUWO9M1ZIyBjuJieUh0CeoiM4PqIvh+jQt9n9SpMCwFRna6JkYIY5+m4
         1Hvmj1iaQk1KupYU82jQsA2asB9PqmEi8YRGR80mJMqIJ5TdtkbR/XCeFcbzar56f1ih
         fpGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHg0jdYk9dUWR3P+AIMrsdjrsxpne7ZsAFZ1Z102ojeYTDKPKnw2JJ29ZGJosVcM4JB9F8rYsAFSNO@vger.kernel.org
X-Gm-Message-State: AOJu0YwdkZPMYnEPWKaXeWVjwvMB8IsQcHAONVzw+xO7ZY1oxWwdJxIt
	nFu9LolP/UXssx/AcvU+REKIaZXNLH6Z+cLwK0kJn/1HkE09tu/FnkiElDUOqH3vg8hmCjTUFFp
	Dcb8q6+5stDRRledTHfWSbRwUzW5a0Xvmx4RdmMhfhxRKwYmkiBAF8mWpVLhiqJNk
X-Gm-Gg: AZuq6aI2kWS2HQQFU7KwQO87KHN98/6waPiLRioyA9BImTeVAnnHUAyJgqYe0F6KWU0
	UyJocpMfYsFkaXeXx6YKFf3Kug8LxvEn7Nnc8JJdpRSTjZdpT+K9qZzRsepDa3fOBvAd25E76gL
	nWj1S/+9SmzWwX3QjBjAVIymS4ARMGdenabJv3CJqn6XMMTv8sfoqk5pV0z3XNkFYa7AkTT14P9
	frN3meXotZPALzEcYvHLteYKfiLJC+ocJik3C+HtPKC+9yuOKpKSRpTDXEY/Wvgaovw/OKKWuNK
	VUW+QHEczgWJUAfQLe0puDfRIC/A9u4MyeCRX9I/GP04m+ROBrNbKIc87pHhzab8bQaiM7E8Xsp
	BHeEDin3f8kAX027HBDbWgGBtInxtVDeiordJng==
X-Received: by 2002:a05:620a:1a19:b0:8c7:16fb:ed49 with SMTP id af79cd13be357-8cb3314fa50mr381880685a.63.1770913216505;
        Thu, 12 Feb 2026 08:20:16 -0800 (PST)
X-Received: by 2002:a05:620a:1a19:b0:8c7:16fb:ed49 with SMTP id af79cd13be357-8cb3314fa50mr381876985a.63.1770913216137;
        Thu, 12 Feb 2026 08:20:16 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d835f6bsm183882625e9.14.2026.02.12.08.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 08:20:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: thermal: qcom-tsens: Add Eliza SoC TSENS
Date: Thu, 12 Feb 2026 17:19:50 +0100
Message-ID: <20260212161949.120898-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=TRLTPipXv4v+KxXfbm8DrsJEY9p4cLhTYGU5J3rwR7g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpjf2lnsKOhlO9JR41zyTmcq0t1CaJLhQJ0ZlRq
 3F2poGCXfyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaY39pQAKCRDBN2bmhouD
 15mVD/wKKp35RLZSvxLU9qspOqCa7bCknspZbwLeaxd2avpodxQTUpcRdqshiSd7cfm12BCJhU5
 qNErh3ml3DbvZ2/LkF4FFYbNCfKoEqLgIhhskW1X+sBKhkuzHcB5BUB1RuNnzfv9oLtONXbB+cR
 954SKzJLpnPhFZPDHq2DvvvSD4ITQWf+Qt4V3f6EzAo+XxwdkIdG42P7qGo8zkbM38+hD1RxtZi
 Fpb7wzBZFsaeUQYDQguI63Is/OJnoTOQ5lydNoVJcfG2O9dLn6lEZLNw4yQ3vRoOV7nYSCFdFVY
 LX6WwwVhmOG2sYGJ54iZhbAq4lp5bqHaSCKG6Fl5+jzBKjpsBpq1Fx22HNbA6n+B9QTUC+FtT4d
 sZ3QgW1r5xDDtDju6BMoxDydVAeIq6Dh/Z9m1DJDS36X9niGTVD+aK35MIOAlBDt2eUCFJiXEEQ
 no7lZgsEVb6xYiVwBxEmtb2zSxMqljmxL3LC76a8m2S4rYuJAwSomtwKtlKx05fKV5+u+UB2yH8
 Y/DaoskYYyPfQrOifV0BJ88NbtKjwh5WufoSunboPyehKHWMdnflCkIFnkUeFTnWbS0v8BD5rt4
 xuo+tKVvi70VgvDQ1RuKxg94H8Rt8jPe+YooxeWSoncfKP3VvepJLnUHmRZ3TnGyJhOzcZ27d5q 7KxabH7LL5aHaqA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: KWj8d6Q5nbP_HxZ-MacEmRxHevvh4EaJ
X-Proofpoint-GUID: KWj8d6Q5nbP_HxZ-MacEmRxHevvh4EaJ
X-Authority-Analysis: v=2.4 cv=Ctuys34D c=1 sm=1 tr=0 ts=698dfdc1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=MLjw1J6mtoyfZjlVJ_UA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDEyNSBTYWx0ZWRfX8MTmjAI9nQOa
 qOxni/jtDRfJDXa98lo4X6ItRmcpyAfTOoZPLsFi9kXMalnub8yviyz9BzIMiEZh1hHXHcg6EDV
 osZBkFfHlFj9eSeqVnohZY8VvkDX+mYIqAGBcjA2PkIF4exOWjD/TPTtG7Q3aworxV3NczNKmIl
 ALVUenhxjnmgu8hpdan6B0Ptxg811Ij/VTzNO3UT5xbIduAThpRrqKu9TILzgceaZTthTEpQwVX
 IZk84RAnM0x0Y7+YAGD7FODwDf2cDyN9ISv+MUx6WOzEzCXhulFDbRD7c3L+ZhYw/U1sBcxYHON
 ZzfUov8uvhdHRckNfrHeZnKGFvb2JBAHdisTq67e7Pg+YLGWhYteng7eKUIhh4MY8g/ZoZf/i27
 XcCK//bFslMFABNzMablRqFIYY6ZHpan1vR41Zjxnu+fnpA6m6bSM/oeWK43H+964KlitQssMbM
 cF1bgj+HaiVAggdhFmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_04,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265132-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B9CE212F4B9
X-Rspamd-Action: no action

Document the compatible for Qualcomm Eliza SoC TSENS module, fully
compatible with TSENS v2 generation (e.g. SM8650).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Eliza SoC is being upstreamed and the compatible will be used in DTSI
posted later/soon.

Some existing work:
https://lore.kernel.org/r/20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com/
https://lore.kernel.org/linux-arm-msm/?q=eliza
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 3c5256b0cd9f..6505a386eeee 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -54,6 +54,7 @@ properties:
       - description: v2 of TSENS
         items:
           - enum:
+              - qcom,eliza-tsens
               - qcom,glymur-tsens
               - qcom,kaanapali-tsens
               - qcom,milos-tsens
-- 
2.51.0


