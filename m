Return-Path: <devicetree+bounces-273557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKmSK34tsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:41:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3092523CA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C21B31E388A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49523AD50E;
	Tue, 10 Mar 2026 13:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eFq5elCb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEE53A75A1
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149344; cv=none; b=MWUftH8orYEtIJW2dAftAwtcXjQJkmYaaLSKL0pXZ6AXkW/ed/AacXYUCRThlmFBOmtt68zxErb+DqTYkD3vAU2XZnCILZ9ubPp+D8+Eb1hTqqic10076nu7Wpb0ZA6oa+tRwwp6R3x/tdFKzS4PIjpsvBImhnf8SE7ztmlC/BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149344; c=relaxed/simple;
	bh=JBgLBkUW/PQuV8y8TEV8teDGaK7yEs+C9xS984m+xQM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Qow5EsRz4/vrZdRZp4+fmlz7qbFLV4LvBamYoy9JP4yzJtO/8T8/5FHGW8ZDPYaE8bzQ6b3LXByHuTvs7NBAOmA15MNMjPMvNVTsvh1J2EwifES+bg5FuoEDij5tyweNMlYVI5zl9uus/gm6OmnzP5nHl81QDDlif/+uggSo6Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eFq5elCb; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-483487335c2so108246905e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149342; x=1773754142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ERE96OOa9mPMXkis9S57ORUkCfhlkk4LNSHX6ZfvKr0=;
        b=eFq5elCbwWvWlt/y5oRxDspmSwM58ilmt0tf7JvQdqR/gxk4e5XXd0N/cLdIJjTJ6x
         NrWpIHBIdhV7NTWRIEJqNJtRfYZtdpiau7zCLYD6REPSn/8R7waXJcITcjrYUPYzypIp
         4L8YP8QeUgc55B34RYFta7ArQAUbsQ2FSturxR2/5RVJd17h8ws1Wc8LzR8zTHyC4ZCu
         LiHgcV19vRmMGZywdqNhuOSC3z2/GIT9pDyGo7LEZOBJkzY2caVFahmJVClEZ2OFi5oA
         x9xRJ7pswn2aOdElj7PnYWr6V+HWrZ3iVGUyYlb1EfyhJtvv9i8Ct9kseYJoK3v7hCH/
         QsZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149342; x=1773754142;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ERE96OOa9mPMXkis9S57ORUkCfhlkk4LNSHX6ZfvKr0=;
        b=fFAKshghipIQ7Nuebjn8xSU2TKUiwFqNQFM4WQK/voRgrZV3pTXnhleePbL2R7ujsL
         I+cyMMrLGrjMPBuZpm34E3/PoBKDOnqWUy7Pb4cJpGXvQCk8A6nSfbTPHKHjZffHWw0A
         0X/15GY8Jymlj9aizYHTNAj4jJ/zQfCoF1zEyklmZ6HOGNyPERxaE7OlaP44IBiulUbB
         NPMkkdBhUbz4HYG4E4VK9t0/XuXBJs2Y9ndsaaM+mwARO+NsxNtNpWoyOkGP4zrC5Bf7
         m4YWZqQRNkqN2Ia52Ymt2f+dIqkgdc7MzgjlGLMf7VaRFVqeUSQFD1og5+VRxxnW5z6f
         FhRw==
X-Forwarded-Encrypted: i=1; AJvYcCVwTI2ZzRfNWzPicbogb9Bg9Ld3o18j1dmuucBPc6Rf5rJewsFQFSO4zUw7lns4V8tfm12+7JdJfKZv@vger.kernel.org
X-Gm-Message-State: AOJu0YyBp0uIFVFGdKUy5+ZaVY93llAI+Ti+TNrNrmpo2knF4IJbyhyy
	1aDZhc5C989kyMZyQYjDeFiiFyvmBleoRtqhk/2W1vB4Rtt2nPOxIyb2S5WglDn7sU8=
X-Gm-Gg: ATEYQzxhSbBmdjKedCVfpCNd2GlGYqwXYYdB0xAFt90OKYJ9st/fCod4wmhfIxI0rv1
	v6ZbOh/YsoLVB6ypp7iCtuBPBmIra/quwlsullWcz0OO/3DTp/CB3ulHq2CLVmeIvY/xCZzJSEP
	OJ2OXSfK7F43voQJw2F85ah3gbS6teBNW9WQvBU3DnVtoLKfjbbnnIIC5IYnuYxEMTUZXKbbRXb
	6oML+5eGWNFoowm0H7HwrpV5uu4OYxgdgqoJ7pwIkS6BPfnT5cWnqLIJ3o1ieQBrSI7NmzP8+T4
	mTGI+ZC0HTPMpBA31Hbla1pJ7LJTqYiUuqrihgOghM3tWSWyarSDQdmuRzRupdPmXFleO2wxeja
	CVb5dzCWsPtQZF1PuHWSc/uso6o5hEW7ioo33unIKMPjENUu2OA6B5ATupuloZmuLdVvVxnZLYm
	7ghfONXvrPvF5niV5doWeETY+pxIamM1hQmoKGI6F2wv8S
X-Received: by 2002:a05:600c:1e85:b0:483:8062:b2f with SMTP id 5b1f17b1804b1-4852691c657mr248109265e9.6.1773149341485;
        Tue, 10 Mar 2026 06:29:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:29:01 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Artur Weber <aweber.kernel@gmail.com>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dzmitry Sankouski <dsankouski@gmail.com>, 
 Tomi Valkeinen <tomi.valkeinen@ti.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
Subject: Re: [PATCH 0/5] dt-bindings: display: panel: Few cleanups and
 fixes
Message-Id: <177314934075.2052605.970030122356003827.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:29:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: EF3092523CA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273557-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi,

On Fri, 06 Mar 2026 13:02:53 +0100, Krzysztof Kozlowski wrote:
> I would expect this going via display, but that does not happen often,
> so Rob's tree?
> 
> BR,
> Krzysztof
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/5] dt-bindings: display: samsung,s6d7aa0: Document port
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1f5a1ebddc170197348d203b11a05799966dbef6
[2/5] dt-bindings: display: innolux,p097pfg: Document ports
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/32003681e575a9a02cb6814e99157dfab0b9f70d
[3/5] dt-bindings: display: panel: Drop redundant properties
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/72cfe73347fac6252ab77d8dcd405f0a5b1a5a24
[4/5] dt-bindings: display: panel: Align style of additionalProperties
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/66b0baaabd35d302698d0a2c98671bf4e1b87f92
[5/5] dt-bindings: display: panel: Align style of "true" properties
      (no commit info)

-- 
Neil


