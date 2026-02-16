Return-Path: <devicetree+bounces-265806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLntFbQok2kI2AEAu9opvQ
	(envelope-from <devicetree+bounces-265806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:24:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D1203144996
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AEAC43024463
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E888311C15;
	Mon, 16 Feb 2026 14:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CeX53Jet";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ViAzEraL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6073D31195B
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771251829; cv=none; b=oozIqUbM2+8ryd2n6qtp8vP+mV4CRrrNDA8ovYJ0CrtFXOE+NAwc5/q4//47Gd6SyJ6YJ+d4eEznfJtcTB2RUVGQYuon365BDaE48vXo+CJX3leRrMGa0Z/ZuiffDvI2lDxDUs9T3DujY5MVCkE/U+PwiV0eybldJJv8tpjA1Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771251829; c=relaxed/simple;
	bh=Iiuil9S13HyvVze1LYPkhHu8cLgUNL75hWhkbEfEX34=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HFWmblykiiuu8t5zGiLeNQAHKu41Lhvv8lgvDhNxIMogEzoudl7PB1M6GIQoO2VZnETjWQBObAPyB5g/DFDM2FdZNlt3w9HRaauVxUyCH7I09PatK42xyGi8Ni1MNFk5XqdjEaP3E1m9kxfgHiMA30MglPI7kDpa+reu6RXl2uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CeX53Jet; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ViAzEraL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G9aPvV1869034
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:23:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tdDAFqnGWX0ame6wpW0GALZ7J5cThgnLOFF85Nj4Z6o=; b=CeX53Jet/pIwCAGf
	K43dnQSUVp80XX+M4MlJd4EmaD1heyZT4mee2Ss3/LPoDOzHgAdgleCgPEQfBCzr
	m6W/FTKg+fOeqV46GAq+g4LOrbt6MkkUPef9RHGLhVv2Y2eMITqKSIa/JnXllHuX
	9w01csg9wZEV3i+8ZlCKYk7JOMutmuk6Y+s9buSqq/zUVgazIKF5k9EKjew5liyM
	oWzYmEkgaU5LGB7rzdFTGbN7ztQ1ZwUhvAXS3KBpSx00mfz1IEwh9P2zTmOgng0a
	DrcRgzLcRPa30oibFRITtf786x1fzIZi9hYRkLvlUOT4sPafV+uMPqm+dX3O0An4
	/797HA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cb6buk3cx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:23:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4b8e9112so174001985a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 06:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771251821; x=1771856621; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tdDAFqnGWX0ame6wpW0GALZ7J5cThgnLOFF85Nj4Z6o=;
        b=ViAzEraLSR1o/YGu4YtWRetaIO36FGQmWocfatOvx+6TZtDJarcPqxiZb8+vV+Ot2x
         k45T3hYfxuwg90yyPE5ExdexrhBqMlb61BwHS8qf3n306thYIV8deMb9juOFmo7M7UxB
         Z3G+Ji3HXZbBTk+ShP4ylMz6SLGx/JB+2JiXZZIkDgk2H7gm5vtPL7xsFhD5obZBvO6S
         0UY+QT74QzZnuVST1YT1o774ljIH1y9QOM+NsUP65C2AAam+Ha/QJ32IpfivNUGXeYOo
         hka8ubRH8AS10X0Kll7nGExSoqoL9g4bY8JLFT05aUu4NQK1gplRKiAV7Ovyc6KBlM8L
         +hMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771251821; x=1771856621;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tdDAFqnGWX0ame6wpW0GALZ7J5cThgnLOFF85Nj4Z6o=;
        b=I3BuAcpsM6YOei8DYKyT+3NI8lyQ9b6yCnTNudIeQwunDDI3KZ8ZWJogpIx3wsooOH
         s2/Iq/QE7DIJXjXmFqt4E2dmMjX6b/aTje4sNmmmehSFKgHdfITFXyTlZYrHujCZ5gj1
         XGfly/eMIxyuvcw+G3XsPVV8RTCVPCbRBOgoPRRdcoqcbBs2i/Xf3GkhxBACuRNK0L/Z
         2D0YI1s7cse8AzxnJeYH/Usdh6LyhMLj/4nbL7SWIl83Q/FvfJRjRUxGxNZuTzk+YHNN
         fcX6eyaMSQWA/dFn/WlG/u8cxg1OP7Yk70fzcq+QA+IidqFtk7aeAsOy8sy4JjNcCzvX
         rGfw==
X-Forwarded-Encrypted: i=1; AJvYcCWWy1GQBsLwveyGIVcJDhzpiDaDJVH72AqThGXYrce3jFrwcEj3hbJmLF5FTiaFeOi4VdrMqS658LL7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw89/wzpl8cNsUK3DQQI3rnEloLKlvObBoEjg35/iK1LNhP/OPV
	Qwx15RSnWXdG/bqJdx8W6laYD+xoZu0BlO9MdyGs0stAQWJQ6EjPKVnG9QacxNOIG6phOYiDyms
	5ztuIceIuVTSTkzMqcscGJ3sVBKI2o+q874VQZxF+N8CuWHSbhYJlUo2PKrHCI2bj
X-Gm-Gg: AZuq6aIvnxMiB9ZOtl/HuKFS7J7n+xbB4FHpfsk+WGX5nYl73p2aGLUvy2Om7Zx5qY5
	S5hZZl38kfnFdGHSQexul3GdVEGyRraEKkvhNLf06HgaH7+wltQogFt6mlisyO9WuY3KcJt9y+L
	BkZw6eFTIDjwKH/ldHuC+Ba/YXd52wToIpHxyV4PtFlvqfHoK8pdlFds6snFs+vtV2B4trUCv5J
	h7+3LYYJo0CGhuBAQlPKVjH1ZPZmmHYX5iNJFcFIBYl8CJmfJIJnmQWfoVjZ8xCfNbHvwom0jWP
	h+Gkye7TrRNYAjKmWnfYh7vrGVIM4sjqrDwohbbTxr1Mg0zbsq/Q0FMyRrkFEQZPRpH+k7hEnDY
	cm7TajMzH1o4NHm5z2PJnXlOwiB4Hyw==
X-Received: by 2002:a05:620a:458f:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8cb422b2fa6mr1215568485a.30.1771251821116;
        Mon, 16 Feb 2026 06:23:41 -0800 (PST)
X-Received: by 2002:a05:620a:458f:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8cb422b2fa6mr1215563585a.30.1771251820328;
        Mon, 16 Feb 2026 06:23:40 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a34d66sm101714975e9.20.2026.02.16.06.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 06:23:39 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 16:23:18 +0200
Subject: [PATCH 1/2] dt-bindings: power: qcom,rpmpd: document the Eliza
 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-eliza-pmdomain-v1-1-c51260a47d6d@oss.qualcomm.com>
References: <20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Iiuil9S13HyvVze1LYPkhHu8cLgUNL75hWhkbEfEX34=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkyhmm/jI6D+9HaAgvGPqytBk0tOaPzu9Y3Oza
 mJOeK1GLISJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMoZgAKCRAbX0TJAJUV
 VjuOD/9vt++BzU4In0EtL0RIjHrXGRz62Z+uDBR+3e7oiXLjY0n9DAu4FXXUkifnfvEEH0cJ5zP
 8uQij488gmUsi3F0WZLp6mcPI5AwGL/SwXxqWDNMm8n3R4myRBVdGPx4F6eujU37Ik9rHpJBTX6
 oXucBAMvS6gZix+mzqOqWilOL6J1xR+dYMgN3dpNUzsF/Ii6BgOwhJEczBdIa44jV3X5LLKNYms
 4lAyIrMCHGUGTAF+BySKGyrB7VmFJfrVdOOcbLKw88PPZXAQTvAVpvMCP45rbD2iTi8ERxUF524
 wnojj/rCIaAo7ptsjE6rEMMYH1aSkQxqGmpqdHzXIj6nhS7bhzSVLo+w7wCEvle4p/oWckCrOjt
 WftpQt0ZqHwLQCXZDWZo/nUU7jsNRAQGGySqORkqcJ3daiuxVtKMPhGNjFIlV4KaMLw1nXePQ9q
 43GSuClmI4VBZCI+S7Lb1IbzcF48dgJnjDAjneYqcoJxf4X+2qsON8OTVg0Nd0crEFDBb7Uojcz
 iPMa4PYZJtlxxK9AFjHHXg+KfTlTQrN7jf7hDsZe50putr6Yp2BdeL/yy+uvQhV6ccaBXCUb0lI
 pke7RJHC4cX0mOisSUcOSdRMMXN6SMclgpRN7RvvGGE4aBWqrhNtCorzSUI+z9vyi+26eFs/ptw
 o/mXCpNM5eSbk0Q==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: Tmz0oCLLzMr9yJHejRVr0j4sTlLrC8Nu
X-Proofpoint-ORIG-GUID: Tmz0oCLLzMr9yJHejRVr0j4sTlLrC8Nu
X-Authority-Analysis: v=2.4 cv=M8dA6iws c=1 sm=1 tr=0 ts=6993286e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=-qkovbBEdaU6HcigwZ0A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyMiBTYWx0ZWRfX8v+brR2scvfn
 2RkOK6gBFLdW42PyIOzABPAI/6UW5ZaC35cccYfMGfFIf55h3PyXeRrjMeW5ylv9EUvP8TTK5AW
 Ny7eIy4fVdLlG5UbWbrNBU1wwHgqezTuZUXKw6kdR4zTOk+bZbmpNXtLFZsw3XPoQIRzgAsTpoC
 5q3xHsqiLVpQA12rh7t9pKKI6MHzG8p+HrpFJgRanOylyKQOWKIvywukfctQeqjeVXv2oyp6/32
 RWRV9TWjLbNoW7kznrseElM5/5HfTeA0Kg6FkWdduhP05r9x/2ODiMHbbNI1Oku/7/0smz+xnh/
 iWuLaK9Tz8oc8SO0ULbm/vq40mIG2fecd3l+IN+V6AHGrUBiOh9jtuAIloqcUGU4uYyhZvTEjPw
 be1ibWfeaT3HZo0tnbBkvepOAIjyyhUGO2m0glBBN/05ShJlcs+SNoAPlnHIxZQnvWNogwxJcuL
 ZuFTmppS28w/WVIFZjw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160122
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265806-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D1203144996
X-Rspamd-Action: no action

Document the RPMh Power Domains on the Eliza Platform.

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


