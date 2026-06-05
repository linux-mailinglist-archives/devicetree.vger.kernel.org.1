Return-Path: <devicetree+bounces-307349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KE8rIzixImrkcAEAu9opvQ
	(envelope-from <devicetree+bounces-307349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:21:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC40647ADC
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:21:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="On/QpE1s";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=T+mLT8wm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307349-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307349-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3D7073006D5E
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 11:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7DE4D8DB3;
	Fri,  5 Jun 2026 11:19:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FD94D8DB6
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 11:19:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780658374; cv=none; b=aS1AwP0IeHdW2YxoVkZ/0Tzgqo66Ar3VV58/z2eGW0v/EJjwHW8RxTSGRXcjG7e4BdBjSbsB5/vjOz78P4X29z45sd2ScYVRCjT+mqeHOnuF2xoDPURixcGhG0L7XkixtpZe77qqE8SqHnXmt/yFNe7UJ75tydiWUo4Cr9Sjb0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780658374; c=relaxed/simple;
	bh=Qt2kstaKGrB1yY49mZjobtR/4AMzw9aIfR3UkFARmBY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jEiGDoOLWTZW0bkajW1EhthYhB/6ZvuE2uEzu6EN5SgPXC0SfIlB3VJzPpYahgr9wkOxJFeZ6npqRDH1FIsIyetAzVK09qvZvQEL2/DTSiPmNO/qSfCBYDaepNuAI507cnIwEdtwIFGtG4C3ti/ttIfTOis3jTS5+Oqy6YVIQgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=On/QpE1s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T+mLT8wm; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65575UTu1501757
	for <devicetree@vger.kernel.org>; Fri, 5 Jun 2026 11:19:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aqRYynkSRgvqP9sDhmtCs8Xxd+0USAewY/2Or+/Dk4Q=; b=On/QpE1srplp2xgB
	wG+v/aGlx/kEuX7FIrhxrksDYhgE6MCUi0xWqqsPiyXHdOuoZWbdGkmpDNphfTOe
	Ty79pkqLQGcdwbr7yBA4gpCNAzmoimJfn+xkSUem7BUhjUaTKH+zT2nwlyg5S2J8
	1tVTMJIi4lNZA0eqb1yCNfY0ItDncf8UJj0k/qqiv1zJmQnwlnHV9RHBYpjM6vyS
	ro2X7T562Jkjr1PgPZevB92mGzX6ILAHRRJHQtX6hn7K/U4fUF3/RJucYYuw2xOn
	+rhWCXx248wi/xpU0oUY5eqq3+q+8g+/2EFsefZjXbbt32QvIfBJEkiJwkmwcxu+
	caY2Ig==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eksrwry6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 11:19:30 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bf004bf8beso21030015ad.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 04:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780658370; x=1781263170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aqRYynkSRgvqP9sDhmtCs8Xxd+0USAewY/2Or+/Dk4Q=;
        b=T+mLT8wmwI/+L+xLhtSUKAmi7B2jwTuXAvEa5LwWEzNryy4m3vH9/N3NNuoqhLS9gN
         Sd+lkO8vx6er3BXRdTLjtOd4v/U3z40SNLP0tWYAgmGxHuNl8SFADcaYicZKNz2M8jgB
         TNcW5OS1p68QSQa1EPLynR4sV2Goetwv2OX76f2F21C9Az9L8/LphD3kLTvdoUIYKILb
         76DjwtqJOVNvKTRooYF52x2B6amOxkNtR6ZW2ERN66Mkw4Pqp8XZuJR8PyngE/9YQI59
         SLOXJmt0+kUAKPw+KHvteU+un/qcooIEwgybVo8sIN8LS2Q6W7jyBXUonoFllzHvTpFN
         zNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780658370; x=1781263170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aqRYynkSRgvqP9sDhmtCs8Xxd+0USAewY/2Or+/Dk4Q=;
        b=C8JnxJ2UFZxFX8MIzBQBFOf6zOIHnwvzT+/0rvqOu1YlCR3t7dDs0Ch/Kd1QpjnEL0
         Ol2U69u8DrN5+bl+vKxZ/EJcXMcrlGvH/e2w6APF/mkeUpIq2aDava/GqnCghyP/wCsR
         r92On7BMYcwYFIlBskX/0iqgNHP74fhM9CNJghOYl3mDKfeFs1FQJWtzQsgX6NBnPIlw
         r1rh2S0t73Hx99d07bWGCv49Tw9/Z5Bad7hJgdUJMAf+bKZ7jUGs3ByBvzpqefN0h1T7
         Uaf8H7io6BDcau81nugc+h+KgXEhUGoqwcaBuYZJDZadCFycr/YGBvGdSrX9ADZYAPUB
         fVeA==
X-Forwarded-Encrypted: i=1; AFNElJ/k+AwHlfBbjqLOQ1jArFPxc4tG8Kr5An3ecKwWN7W4Di1qgJ4nZ/7eaBakKK9DJ3xSdHcq+OPJjOmf@vger.kernel.org
X-Gm-Message-State: AOJu0YwG30yjfEFholhBzS/How8b362oi+TxfAybZnn99grlAFmNuSk4
	irXglahG3goigJIz/KqFtnTQk5uYvEMr4RkcPehkJNC4ueArPgJTeixzdmd1mVS2iOJuBhZeO75
	SDegqX7tXhI9s19+HjQazedE0gs6KA6Sr080M/SJIXbzpzvMIRJ/XPqfwWWkQ5OY1
X-Gm-Gg: Acq92OFx8a0PsUUtOS05ql5SLwAJci7TlW6c2sunwoBdH7U7xS2uGwK0NowBfFnGd4y
	ksuV7q2sAdYjW9k1GZdJB+R47zwaMgzfn9NB7IwpDiEKSW0rxy/wM3k9VKZ3s1IdwrOK7U6OkeJ
	Ukv1VcAqcKDvqWed2ObfNQkhg3xuyEoXn734WqLEyZmFRvUyDEHgNbhg/OJoWFmEA6LzvMnr5Wp
	AMYZtpWe3ZMj2NlmR3TXh2Lmf1yhnUVdkqytcd1nP1Ulk8RjQpmcQ1VVvYaUux9u28/umYxO4kF
	qf+8msfwIVyDO+cgztqxuTWeAKn/VcBmTqM6Ce35xdP/LyRyNY3Dm49iT9EqKlCZHEUfBWcG35S
	UCUzbFlxvIKvKbNVBvY6n9/9qO+jy/EhBZy4oxa8PMMh16TW8s2zmwKqcFVyR9T8=
X-Received: by 2002:a17:902:f78d:b0:2bf:175a:db61 with SMTP id d9443c01a7336-2c1e7b35b28mr32635855ad.7.1780658370427;
        Fri, 05 Jun 2026 04:19:30 -0700 (PDT)
X-Received: by 2002:a17:902:f78d:b0:2bf:175a:db61 with SMTP id d9443c01a7336-2c1e7b35b28mr32635415ad.7.1780658370002;
        Fri, 05 Jun 2026 04:19:30 -0700 (PDT)
Received: from hu-imrashai-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d395sm124551665ad.17.2026.06.05.04.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 04:19:29 -0700 (PDT)
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
Date: Fri, 05 Jun 2026 16:49:11 +0530
Subject: [PATCH v4 1/4] dt-bindings: clock: qcom,rpmcc: Add Qualcomm Shikra
 SoC RPMCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-shikra-gcc-rpmcc-clks-v4-1-a0a7bfb44455@oss.qualcomm.com>
References: <20260605-shikra-gcc-rpmcc-clks-v4-0-a0a7bfb44455@oss.qualcomm.com>
In-Reply-To: <20260605-shikra-gcc-rpmcc-clks-v4-0-a0a7bfb44455@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Brian Masney <bmasney@redhat.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=L5ktheT8 c=1 sm=1 tr=0 ts=6a22b0c3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=5MG6tTDo7b5tcJehnegA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA1MDExMCBTYWx0ZWRfX+l0nxjlIFyD5
 6ED8zuSeObZ9O47PDvsJi8hk+UjDOY2zgGzz47gQTsr3h+F04mP+YWKjylZxi1e80NzmowrlPJC
 ejTqz3Hh/oFMhGb0zDMQgVWe6ca/Xtm+Kd8o/ktHFZoY9CKuVdc+L9+iJYDopEZHzE+VcMQbsnx
 PqG6u0PTjKVp6Bdpw6bWY72a4Xl5A53vBR2YBgBS1MohGt6PkbK1eaQlxwhQToD529B39QIfSn4
 dGiBSWg/bwFVZJE9skQNzLN/vrPS7QtxkuZEKIQu3PK+FkYYvcolFrtJWAM7ERACPXuJpRt1qXe
 aXrISyZDXykiBpHuOI1uiacmh7kEWI9a99BDE2i5r3rjF+J+bc3JUQ/OFwvlJFV4eBJhDAmzVMG
 mH7POvRG/4Nk7EZEXD/jxp0CS21+tNULojrh4W/v8hVHAMIQGS5gra8XsqDstrzP+gNhYm9K7Yy
 zCArmBwmzJApqRpN9ZQ==
X-Proofpoint-ORIG-GUID: 2hnXaSddKgS_e-rnv38dTsPjJ_VErZzr
X-Proofpoint-GUID: 2hnXaSddKgS_e-rnv38dTsPjJ_VErZzr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-05_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606050110
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307349-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com,redhat.com];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richardcochran@gmail.com,m:bmasney@redhat.com,m:ajit.pandey@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:krzk@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:imran.shaik@oss.qualcomm.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BC40647ADC

Add bindings documentation for RPM clock controller on Qualcomm Shikra SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
index ab97d4b7dba8bc8d38903b399d2bd4bda087db8a..b8aea98b00bc22c4ab6da1e6235ad676f200b44e 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
@@ -46,6 +46,7 @@ properties:
           - qcom,rpmcc-qcs404
           - qcom,rpmcc-sdm429
           - qcom,rpmcc-sdm660
+          - qcom,rpmcc-shikra
           - qcom,rpmcc-sm6115
           - qcom,rpmcc-sm6125
           - qcom,rpmcc-sm6375
@@ -126,6 +127,7 @@ allOf:
               - qcom,rpmcc-qcs404
               - qcom,rpmcc-sdm429
               - qcom,rpmcc-sdm660
+              - qcom,rpmcc-shikra
               - qcom,rpmcc-sm6115
               - qcom,rpmcc-sm6125
 

-- 
2.34.1


