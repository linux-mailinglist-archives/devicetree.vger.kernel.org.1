Return-Path: <devicetree+bounces-272038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN9+NKLCqmmgWwEAu9opvQ
	(envelope-from <devicetree+bounces-272038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:03:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2012200C4
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:03:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57D8E3060CC4
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF2638BF6A;
	Fri,  6 Mar 2026 12:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c+P1j0u9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q+qAIESm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C9638C2D5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798600; cv=none; b=L2yx8PRMc5wlc3fNYcoNZicp4qeE0m0NKJxBVVDV1GkoPPJyHPIKLmU9MdV7d4JfuX1G6Y/0hV3zU3OuByBS+DFkMJidKkB8In8hcbHIeSbrbIIVDQPE7bKpHayXjwzZbKg6VMl6RPMBXQBgoANKYHqNyjQ3yQY43wriuZzlOPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798600; c=relaxed/simple;
	bh=Y8BRD2ebcFiEnL9gO+I3e2ZcCGMVRz9NU3aU1YNQ+4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U6SkhGa65Gw2lHR2B6vbIttZUeMtds6ew6CoqYGOqvtpOp83Mqnvq3CbQGTou0NDJroJ8mGx2wCr9H90aT1GiJsFB2w11SNJ1ooET11sAjaBPVslE6QyKXnuj7XqHvkX+A95+iy7wdPbwXCJzzFH3yNhsvL/SVURzU/5gNVZWPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c+P1j0u9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q+qAIESm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626Bb1l91188890
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:03:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8QfJo5HK9r3xw1PIFCw+iWNIINNp809eUwF8A/Aun/w=; b=c+P1j0u99TQClv2g
	yzNuDwmXjR+Op4+iDrJ6R9DuTl8U+JYngQnYNzerJ2+/6jl27DbPjxmXCiXjT0Ee
	ehmwBPMZWiY4R8Hc4NRBza6Tu6fFmssX6e5dWZSx1DAAnwjgwtI23SMU7RyJufMk
	CiTD3P2iEZQtM1YHzdc0omzYi64/ReEmRf0dOisAfGuoP1WGwJr58FcibwsvLgcT
	zSAdMCWNCcEmlAI3PYflVeWGLuGh3koVfHPEc5+BxYIEWO/J1F9ITSTNSsloR12/
	wskaNvNUyv7wevGUkdaXSvsEfKNbqshy7HIJ7D2qL2ByX+kZdCWU8wbq4TTcy9Oc
	6vncNg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqx14g3hd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:03:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3b0d938dso5834446285a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772798597; x=1773403397; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8QfJo5HK9r3xw1PIFCw+iWNIINNp809eUwF8A/Aun/w=;
        b=Q+qAIESm1BfjZU61kZ9rbBdF5trntaf1UVAJ922oSoxjOYJjHf66R2xr/8UI/FLtTU
         J4Tth6+eaJqvUiMHapJm13onoXQparZnO3ZL0r0VVfx+e6cvGHBKLrWpCYMFdj1rHnmt
         4xVoUPWQF67KBowTUYJh1TW/HrZwOAiMPamlf/Bu43qWPKWHhtVhvnGBqUGGHgo16VgM
         olDV/hYZRwmEirgsxjpJbnqiIDRaS6lSmBVSXXwbW96GCI4UY9fdOCyeRdxe239zmu9k
         C3tSjRAkwxxZtHo6Z5ZviDWtUJEFWIgQdM6T++dh2dH49mJeGU6LTeQW/5hLejIYCllZ
         D3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798597; x=1773403397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8QfJo5HK9r3xw1PIFCw+iWNIINNp809eUwF8A/Aun/w=;
        b=chBk4Y5ZYxmcUG7wZ0s1LaxyyVOHcsAci6fJMnVNObf63zxrvXaBPKjxstpecQIMRc
         uSDGt7bq34bfmr10VNBV3IWISw/Wa0XSPNvDfmzUP8PEzvH93s7ZVfwnhfigoaLfsGjf
         HZ+vxaYykGT9zMHoaz5V3OFJ+8uMWgKKG7qMDd9dK7PwFxmhj/TOIANx26L2+MdqR/as
         nvCqtSpO/6IqhjdQM5RiSUB9yrNLlkArwajAiJ83z5IeQidIRGWZUvUvo6/qNoadsY0T
         NXWlpkJheAM8k2VLwpLK5YV+eQWOFBPsmmnzjIS8iuD3o87OaTqbIL4WMdqqTc50ZRBh
         dNtg==
X-Forwarded-Encrypted: i=1; AJvYcCW+z0Xjy2FyLu6gZozlLXXApuQPiGIXINvIQs9o/3BJsuBQhIK1GzcHruO0D1r1q07PxK5DL6+n7Vn1@vger.kernel.org
X-Gm-Message-State: AOJu0YwQcsrCYMHQKEEHuHTmDkAWQCmk0bhmseXQwy03RcqKkeOMjxbO
	53OVUHN8TcicOEM52O/mPr/ZMk6gWXAWtD5/Rq+azXCNRnYIJk7GLR+PbxyNOw4dAhTTuE4523R
	oaRvwE0+PweaL5rguymb6xd6VNWVgpko18/1UXdaq4hZ2TYQOg9iygJ9D63bG0x4Y
X-Gm-Gg: ATEYQzxeupTokmX0lwoglA+uLWqnMuWG7+IWvN/H8WVP0udj384i9s0Ncm9R/2yqpf2
	C3z/MFTXr/MKXKzRURsS9TdSTRHbiww4DuWxr97aQCdyB1uIrs/QTDXHd0nZKr76SYqrH390Wma
	Ky12vEmLz5RjBKDk02i+OlVn9ortp6CZoFu4220Tb0HdwjsPrE6p7QVLpKR7iV0nBX9m8SpN/m1
	jLx/rwHCAKEeYIquDjygmcJfBVSANjIW+uV/eHRA1dhJTux9AM2Nez+V54/L4eFCIETLw1r221Y
	YCZZ54Cy1PY7P+W2CoJdWR4NM8EYskg2AbI7yLcOF2w3JCyZDHZv7NyCLULgj1NQ0Yrkbtf0wgB
	lgT0G6cMqDZTISY+337sDx6fiw0KpNZmSvVIAFVR3C6kR
X-Received: by 2002:a05:620a:4620:b0:8c6:a5c7:a7ee with SMTP id af79cd13be357-8cd6d4bc1b1mr204032285a.53.1772798596450;
        Fri, 06 Mar 2026 04:03:16 -0800 (PST)
X-Received: by 2002:a05:620a:4620:b0:8c6:a5c7:a7ee with SMTP id af79cd13be357-8cd6d4bc1b1mr204027085a.53.1772798595919;
        Fri, 06 Mar 2026 04:03:15 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad1cb7csm3410129f8f.0.2026.03.06.04.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:03:14 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 13:02:57 +0100
Subject: [PATCH 4/5] dt-bindings: display: panel: Align style of
 additionalProperties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-dt-bindings-display-panel-clean-v1-4-3086eda1efaf@oss.qualcomm.com>
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
In-Reply-To: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
To: Artur Weber <aweber.kernel@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dzmitry Sankouski <dsankouski@gmail.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=12585;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Y8BRD2ebcFiEnL9gO+I3e2ZcCGMVRz9NU3aU1YNQ+4A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqsJ1joJjeH50hDJmMgP5NhbKhC4tA4iN0aidv
 jytVxxZR/OJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaarCdQAKCRDBN2bmhouD
 1/A4D/0ZhzjGHdGqnai5ZhIyrbK/DQ6HMbHE9jc5JxbEfvaPBCrBSwhuWj2Notj4F83mudKCKmi
 XwuwwzVS4sea+JRrzjhNUHWug7XqkxTmbZv0/Jls3RXHKGNUzFGnrOMAQlH24LJBNVYv4k+n9WI
 cLtmB3w277rlS5iWENuLtnmrgIGIY9W6QrrBsTvq27PCM8e3/ANujICSOJ+QM8ePXVXn0omNQxu
 /azXi5+SasbU/ree3N7Dw5g+Fb1FZmU6/5CwyY6osNotjsDCmjyD6a+jClYfIR3yrV9Zazuw3tq
 d2szyvpKN80CP4n+SZC3JeZBFx2x9ClJs1B6uKwPE7DhZ7KpezkJf7PLgm7ISUsAJ+Fsq3CT27j
 VrvTaLLNlAYoVa1KMeHARCzlMrRLGTq86273uH0ddTcBEvxeIVwJN0kUOxYStfdxLkab1jWxgBs
 mk8ETDyds1BHupzxvYDqM8PrUavlrTi96VOVkBR4tV+8/iOMdUJ+W6/1jAdsXPWSRY+8e1mE7j+
 Jt3WkCgrqwVsgpVoJABAa+1XD4hbYRk7+aaQy35FooERTbaXKcOwl7aQmmpKSZbmz0GjO8bvs+b
 81YzBEBlFfIgboArrUG1FBM/Sv9OJHHQevRkxD6ZTKR1p39YDym6rY/ZaYxitRGI4DPU3TLX3uD
 WLRnrES2RgSYwEA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNSBTYWx0ZWRfX2F9jJuCOnML5
 3jdmYYsk26F6O0NItOoIjcpAmBDTVdpco5XMjQw09sEiJv14ZaRWZG7abjz4xcHxScNPEwJRy8V
 WpKNI0uc+PI/7CXA2OCzrkjAFqnuSnOQotpJENaqvQ/eJzKPoihoooLKGzWXchG9Jf0KVh8Our+
 Fkx/byu+YoGgoQy/DrUxtyIGDD7IxygcWCPK3G3r/HuzC+pxigb5Z/XUR/PmvlFMAccYRUwvwv2
 K5+5teYCsnY1yaK7p6qTsaqe87qWxc6EcUPUDwMX/0g5a8A7EV6FgSjn7jCQ1e70BylC9NquQrd
 Y0TP5m6nBTVJl1LIGl4ArfD6NqVW6LKAix+TtwxD1JWyYE2UwzxmUiROVinvsR3rA3/YUc6syx8
 Cx15gWHNDAAhK8g7BTyBUbdAPUcWzcEvmXC5H5RyMBIESiFUyWGB3/stac0Dk6hVTNQFEbmFPX/
 qtRniyo2hPeoFAE/3UA==
X-Proofpoint-GUID: uEEUlKA2ryVl0mGG26W3E7aW33pXR7UI
X-Proofpoint-ORIG-GUID: uEEUlKA2ryVl0mGG26W3E7aW33pXR7UI
X-Authority-Analysis: v=2.4 cv=e/MLiKp/ c=1 sm=1 tr=0 ts=69aac285 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=tGnH7XJvyaa94d3unYUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060115
X-Rspamd-Queue-Id: 8C2012200C4
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
	TAGGED_FROM(0.00)[bounces-272038-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

For code readability the bindings are expected to follow order shown in
example-schema.yaml - put the additionalProperties/unevaluatedProperties
entry at the end, after listing all required properties and possible
"allOf:if:then:" conditions.  Meaning of this style is to close the
schema, after listing what it contains, with final "nothing more is
allowed".

Move the code around adjusting it to coding style.  No functional
impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/panel/advantech,idk-1110wr.yaml       | 4 ++--
 .../devicetree/bindings/display/panel/advantech,idk-2121wr.yaml       | 4 ++--
 .../devicetree/bindings/display/panel/bananapi,s070wv20-ct16.yaml     | 4 ++--
 Documentation/devicetree/bindings/display/panel/dlc,dlc0700yzg-1.yaml | 4 ++--
 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml     | 4 ++--
 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml   | 4 ++--
 .../devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml       | 4 ++--
 .../devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml       | 4 ++--
 .../devicetree/bindings/display/panel/orisetech,otm8009a.yaml         | 4 ++--
 Documentation/devicetree/bindings/display/panel/pda,91-00156-a0.yaml  | 4 ++--
 Documentation/devicetree/bindings/display/panel/raydium,rm68200.yaml  | 4 ++--
 .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml         | 4 ++--
 .../devicetree/bindings/display/panel/sgd,gktw70sdae4se.yaml          | 4 ++--
 .../devicetree/bindings/display/panel/startek,kd070fhfid015.yaml      | 4 ++--
 Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml  | 4 ++--
 Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml | 4 ++--
 .../devicetree/bindings/display/panel/visionox,vtdr6130.yaml          | 4 ++--
 17 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml b/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
index f6fea9085aab..76b48836ddf6 100644
--- a/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
+++ b/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
@@ -41,8 +41,6 @@ properties:
   panel-timing: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - data-mapping
@@ -51,6 +49,8 @@ required:
   - panel-timing
   - port
 
+additionalProperties: false
+
 examples:
   - |+
     panel {
diff --git a/Documentation/devicetree/bindings/display/panel/advantech,idk-2121wr.yaml b/Documentation/devicetree/bindings/display/panel/advantech,idk-2121wr.yaml
index 05ca3b2385f8..c9b066e69e2f 100644
--- a/Documentation/devicetree/bindings/display/panel/advantech,idk-2121wr.yaml
+++ b/Documentation/devicetree/bindings/display/panel/advantech,idk-2121wr.yaml
@@ -56,8 +56,6 @@ properties:
       - port@0
       - port@1
 
-additionalProperties: false
-
 required:
   - compatible
   - width-mm
@@ -65,6 +63,8 @@ required:
   - data-mapping
   - panel-timing
 
+additionalProperties: false
+
 examples:
   - |+
     panel-lvds {
diff --git a/Documentation/devicetree/bindings/display/panel/bananapi,s070wv20-ct16.yaml b/Documentation/devicetree/bindings/display/panel/bananapi,s070wv20-ct16.yaml
index bbf127fb28f7..46e7cff5b2fa 100644
--- a/Documentation/devicetree/bindings/display/panel/bananapi,s070wv20-ct16.yaml
+++ b/Documentation/devicetree/bindings/display/panel/bananapi,s070wv20-ct16.yaml
@@ -22,10 +22,10 @@ properties:
   enable-gpios: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - power-supply
 
+additionalProperties: false
+
 ...
diff --git a/Documentation/devicetree/bindings/display/panel/dlc,dlc0700yzg-1.yaml b/Documentation/devicetree/bindings/display/panel/dlc,dlc0700yzg-1.yaml
index 287e2feb6533..9a2c532dbc92 100644
--- a/Documentation/devicetree/bindings/display/panel/dlc,dlc0700yzg-1.yaml
+++ b/Documentation/devicetree/bindings/display/panel/dlc,dlc0700yzg-1.yaml
@@ -22,10 +22,10 @@ properties:
   backlight: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - power-supply
 
+additionalProperties: false
+
 ...
diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index 5725a587e35c..182a2b825e1c 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -54,8 +54,6 @@ required:
   - vcc-supply
   - iovcc-supply
 
-additionalProperties: false
-
 allOf:
   - $ref: panel-common.yaml#
   - if:
@@ -68,6 +66,8 @@ allOf:
       required:
         - reset-gpios
 
+additionalProperties: false
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
index 3cada0f82951..aeb7cb26c058 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -49,8 +49,6 @@ properties:
   vddi-led-supply:
     description: Voltage supply for the LED driver (1.65 .. 3.3 V)
 
-unevaluatedProperties: false
-
 required:
   - compatible
   - reg
@@ -66,6 +64,8 @@ then:
   required:
     - port
 
+unevaluatedProperties: false
+
 examples:
   - |+
     #include <dt-bindings/gpio/gpio.h>
diff --git a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml
index 96621b89ae9e..43e98bb07c38 100644
--- a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml
+++ b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml
@@ -47,8 +47,6 @@ properties:
   panel-timing: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - data-mapping
@@ -57,6 +55,8 @@ required:
   - panel-timing
   - port
 
+additionalProperties: false
+
 examples:
   - |+
 
diff --git a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml
index 37f01d847aac..2af993d73619 100644
--- a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml
@@ -44,8 +44,6 @@ properties:
   panel-timing: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - vcc-supply
@@ -55,6 +53,8 @@ required:
   - panel-timing
   - port
 
+additionalProperties: false
+
 examples:
   - |+
     panel {
diff --git a/Documentation/devicetree/bindings/display/panel/orisetech,otm8009a.yaml b/Documentation/devicetree/bindings/display/panel/orisetech,otm8009a.yaml
index 1e4f140f48b8..1f697dab832b 100644
--- a/Documentation/devicetree/bindings/display/panel/orisetech,otm8009a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/orisetech,otm8009a.yaml
@@ -31,12 +31,12 @@ properties:
   reset-gpios:
     maxItems: 1
 
-additionalProperties: false
-
 required:
   - compatible
   - reg
 
+additionalProperties: false
+
 examples:
   - |
     dsi {
diff --git a/Documentation/devicetree/bindings/display/panel/pda,91-00156-a0.yaml b/Documentation/devicetree/bindings/display/panel/pda,91-00156-a0.yaml
index ccd3623b4955..871e4c2d9824 100644
--- a/Documentation/devicetree/bindings/display/panel/pda,91-00156-a0.yaml
+++ b/Documentation/devicetree/bindings/display/panel/pda,91-00156-a0.yaml
@@ -21,11 +21,11 @@ properties:
   backlight: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - power-supply
   - backlight
 
+additionalProperties: false
+
 ...
diff --git a/Documentation/devicetree/bindings/display/panel/raydium,rm68200.yaml b/Documentation/devicetree/bindings/display/panel/raydium,rm68200.yaml
index 46fe1014ebc4..8fb7c013dfb8 100644
--- a/Documentation/devicetree/bindings/display/panel/raydium,rm68200.yaml
+++ b/Documentation/devicetree/bindings/display/panel/raydium,rm68200.yaml
@@ -33,13 +33,13 @@ properties:
   reset-gpios:
     maxItems: 1
 
-additionalProperties: false
-
 required:
   - compatible
   - power-supply
   - reg
 
+additionalProperties: false
+
 examples:
   - |
     dsi {
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
index f1723e910252..1bbe0da3997c 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
@@ -43,13 +43,13 @@ properties:
   no-hpd: true
   hpd-gpios: true
 
-additionalProperties: false
-
 required:
   - compatible
   - enable-gpios
   - power-supply
 
+additionalProperties: false
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,rpmh.h>
diff --git a/Documentation/devicetree/bindings/display/panel/sgd,gktw70sdae4se.yaml b/Documentation/devicetree/bindings/display/panel/sgd,gktw70sdae4se.yaml
index e32d9188a3e0..1beb4ba92248 100644
--- a/Documentation/devicetree/bindings/display/panel/sgd,gktw70sdae4se.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sgd,gktw70sdae4se.yaml
@@ -41,8 +41,6 @@ properties:
   panel-timing: true
   port: true
 
-additionalProperties: false
-
 required:
   - compatible
   - port
@@ -51,6 +49,8 @@ required:
   - height-mm
   - panel-timing
 
+additionalProperties: false
+
 examples:
   - |+
     panel {
diff --git a/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml b/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
index d817f998cddc..0819f38a9d2c 100644
--- a/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
+++ b/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
@@ -31,8 +31,6 @@ properties:
 
   power-supply: true
 
-additionalProperties: false
-
 required:
   - compatible
   - enable-gpios
@@ -42,6 +40,8 @@ required:
   - port
   - power-supply
 
+additionalProperties: false
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
diff --git a/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml b/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml
index 187840bb76c7..49ef45c03593 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml
@@ -25,8 +25,6 @@ properties:
   port: true
   reset-gpios: true
 
-additionalProperties: false
-
 required:
   - compatible
   - reg
@@ -35,6 +33,8 @@ required:
   - reset-gpios
   - port
 
+additionalProperties: false
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
diff --git a/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml b/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
index f0a82f0ff790..f61a528c0413 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
@@ -36,8 +36,6 @@ properties:
   port: true
   reset-gpios: true
 
-additionalProperties: false
-
 required:
   - compatible
   - reg
@@ -46,6 +44,8 @@ required:
   - reset-gpios
   - port
 
+additionalProperties: false
+
 examples:
   - |
     dsi {
diff --git a/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml b/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
index d5a8295106c1..c99f4146f1bb 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
@@ -26,8 +26,6 @@ properties:
   port: true
   reset-gpios: true
 
-additionalProperties: false
-
 required:
   - compatible
   - reg
@@ -37,6 +35,8 @@ required:
   - reset-gpios
   - port
 
+additionalProperties: false
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>

-- 
2.51.0


