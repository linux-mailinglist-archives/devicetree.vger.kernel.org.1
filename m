Return-Path: <devicetree+bounces-258050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCNzIg0XcWmodQAAu9opvQ
	(envelope-from <devicetree+bounces-258050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2D5B199
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AF2F5B43217
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2AEC48C412;
	Wed, 21 Jan 2026 16:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tBVzbWZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4E30BF52
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769013638; cv=none; b=eFbmSzNuvyn2hsFTFD7wt69rRabG02nrcAKQfpOzHnhqmqZjSHtB7253PzEVHzDvD8r5vZbUKcWZ7S9Jg3GOVox85ohkrDRUvs+aAx3VIB2hTuTPlNCuasfie3ykAje18tjxw6fw7iWNavQiDzIs/lvNBeSw82TeGWh+hZDdI5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769013638; c=relaxed/simple;
	bh=+fcuDogDNDoswfDYKDTTC9TUfs1ig7AC26I/0EuMufE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GBh130Y1ar/vrqsSWcP/+VAQDx0EWNXobJ9UCdCsPBhiVu8ISdECp7cqsyja5dzvvDpzulvJqmodvUkoc1UD+OFstRR1/4olhP8EgT353/2WzhIb4tPfPqG07euLk8a3g3aQbU2MgVJzXVHpLFNW6kv207ftOL63EPSYEz+pC3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tBVzbWZR; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ee4338e01so268045e9.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769013634; x=1769618434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VvVjTCx3Ditk+y31Hp8YWb6pPY+/zpI3meniVBbynGc=;
        b=tBVzbWZRLoCpwikvPlNJ9aGIuZ66fFNatu6B6Ru5c0T6XJQvlcieuPRfLwZH3qtomZ
         I/g05UTNgG3mhHUfZ4QCGUit7ZlJzhOQ/ilJF4rx1NE3uS7+yZ8u6sLj+PA6K3NJWNu6
         OJcKPKFrixAJ6TqjtQTGeG1/zkdG4uHKBjR5uM8qqvc4F/CQzuzdTlnpw7CviGGj2IK+
         e72ThhLaU+9nnMgclZyAUM6zMgth8D4XChGJ1rbsA5EXSe0KuUEDpGnp6rR5JAM3EafO
         QCWv1Now+sGIp9fELQyZbb3Z4MzGMIWJl6W70n4VI0cVzJDVyvSKqm4C+LjDxqhs/w01
         bizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769013634; x=1769618434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VvVjTCx3Ditk+y31Hp8YWb6pPY+/zpI3meniVBbynGc=;
        b=X5fT/DQegQDxfewpGqrsB0eGz4vGw4Y62YkCkQ+SBq97fMXBLcB9xAbLpYoNskIaQs
         O7VMQgwvmgiAd9QlIq7mnpephD+t71Wx7CJJzmELdjJ69fMmmHF+VkdNflITXGlv+p/M
         4hyG4k2d9RFmL4h+gqHkxAsFVv4CMkHsBe9ZZA9eiP+qmNQMR58WPzpE4q+TavXq4yu+
         FyeXVJs6JPfd9XRETVBJYdakLI9/AY5qQbDoiTrgzzq9X/XISliH6//PBon7IvY7ZqTy
         VQvHjvTZ48rP71Whzolo7iLWRL1A9u86TFlLiC0OVmD/QSeFPTb38JrMMdelbGs8YkaD
         AEuA==
X-Gm-Message-State: AOJu0YwPtJN61z+1939frwYQ4avYoMxa9MFmb61Ew3nqOrb0xunDbfRT
	Yb7VcOnnV7g8o2ki3rE4+cfQEGAXM75kMYr7YLYV8QrhhnOJEv97TlSCw5By+IXk66g=
X-Gm-Gg: AZuq6aLIFnPT6vnolw12ilmeKKORpaVldjkgjqnxXqkNqmD+c+bqT9FB36wyZwiCcQZ
	+YfvDLSSgaxz5lHEQz/vcr8dlDIsulL0PHBiQ57LxCvlUIzzHhgY/KdunzK0edbujpAr/mauqiE
	Y3Jvy1FlSHmD2kr53zF7TsbSi3sAOKXNs0hV+MlbIyRhE6beYLGvM8C47po9xN9zqAoHDHLasCH
	KRlPJZYJMPLwwaM4RwVhlFZ1wAqya07e5BI4gaubJI0lcdmQwmws1iNyN54w7zkenDixp3ghK++
	EeMI+d6w4TkJzihcmsc7jZZDLYhcusroC3bh9Mq4Nr5oxUKCa6pmyGYmJ8ipUdkGJH+ognxafSM
	UhNZRnwcIyyeonn0cB1iB3IwDvm6bcO8OfscUVE3zeQhvj09Z4AoAKjXv3eXd7zWapj6kv8ApkI
	CNu1DvDk/RT95Wr+924SmlEaZi3BpBqPw=
X-Received: by 2002:a05:600c:4448:b0:477:b0b9:312a with SMTP id 5b1f17b1804b1-4801eab9db5mr233791535e9.7.1769013633652;
        Wed, 21 Jan 2026 08:40:33 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470287c3sm1000255e9.3.2026.01.21.08.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:40:32 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 21 Jan 2026 17:40:27 +0100
Subject: [PATCH 2/3] dt-bindings: arm: qcom: document the Ayaneo Pocket S2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-2-bb3f95f1c085@linaro.org>
References: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org>
In-Reply-To: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=729;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=+fcuDogDNDoswfDYKDTTC9TUfs1ig7AC26I/0EuMufE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpcQF8bOQVCvJ5IZyZNj142dWwWiZrirOgpzuVv0/z
 H8T8X1mJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXEBfAAKCRB33NvayMhJ0a1aEA
 DPOqbVJLNNWQdDBOiHJgKFMUbTwwrwCHnGqbUCJO2duIsFamNKfcXBd/26xrVR3KNseqpKXCaRjSCA
 mnG2wxacDF6kZ4niEOfXTocF53CT+6h2hm1EPxZg8lLfy44YkoO6DbKqXEAKIi30P8tlo88KZ0Xpxm
 4665czly93/U/+Z8vRrrvIyOA+dx+nbp75ForWhsCfoUlXbYfp0v7XlDVY4jhi53frb3hLc0iBinvF
 V79fU5qU/Vg/s1WgQ596SYTHhkg487EmXgVhoWtKlmtMIPuLWpdUo0aTZb2UUJoHmw1OlZ5rxuP9ps
 2LXQJ9fAYC6MxR/2qbMn/gr5x20jjNs8zpDiIFi+eqBwGb72RUYVFJnzQQc9CRb3RQnzNP78RIdF8Q
 GxgqTzsjqcZPDytROxMdpCMOeLnKgMgoZd2VFKlZdDPneETgpUsnDaFO7vvJQM9niGskXBNpIatDf9
 wSITeWkb0WjcLZh6f4Y1Vh38OQ+LwDFEN5WtETZMeH4x9+3IaTEeNjN/ouYgeoq6Bh8RTvAw5frMPV
 6Y0UnePIcteIBVXkFWqtNtzCWtAy4sVRpltELANp6GpW3Rprv627ca8yoLgg3UNZLw9Xploht6oEK3
 IgRpVTQizKse/wY+Y00ICWvwcehl2Np61GsisbDz0I16l22ar1O2PFFUMjiQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-258050-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 29C2D5B199
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the Qualcomm SM8650 based Ayaneo Pocket S2 gaming console.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..c6786dac5b59 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1045,6 +1045,7 @@ properties:
               - qcom,sm8650-hdk
               - qcom,sm8650-mtp
               - qcom,sm8650-qrd
+              - ayaneo,pocket-s2
           - const: qcom,sm8650
 
       - items:

-- 
2.34.1


