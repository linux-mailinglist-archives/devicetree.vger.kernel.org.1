Return-Path: <devicetree+bounces-175168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 483E5AAFFCD
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F9284C540E
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 710AC27A139;
	Thu,  8 May 2025 16:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zlUJ6qk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E50279918
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746720005; cv=none; b=Dm75Bgr7bT5fEICUMF4zvCnWWBsTh6KKbDXVXUsbje8S34n9rU7S9i15BIf7+J1RH8eycJnK4mqqYbC2NNPqQUtq8saDgzwvcquPWEmtCARvGTH0lJFDPodNwtzoZ1EE0dH0BIufYlxKfVHJz9P+tYRJKeb9wd21VFHdtwWLnuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746720005; c=relaxed/simple;
	bh=fOTdLbrZrNYYl257wuwf/gAp5Dz3q9apuuTjg0ey6wM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TFnnCiBPs+zpZgxT5p/Q485KOYnI+0hWD1JYUpuTYY1I1CTLG/tpqQaZdd5zwqm9hsht/Tfb7uH5YUCsAZUYvcJVcBVLjqZcvE7Qzt56DS7L73iAY2TSB1KgkFaDmk50bCD+q/3z6YZAfQ50Xkk2z80e2hshNcgg+2/npUxwq1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zlUJ6qk+; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a0b291093fso1413297f8f.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 09:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746720002; x=1747324802; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YS0Xnbw81nX59SdK0HAxNgdPMxZ888/mJK0SILf8DlE=;
        b=zlUJ6qk+eKMAkOO2HqwVnn84rcQk9EHVwcAMME9bpyh7mNtARW+Q1UxcsdB62UFAGm
         zpUpakSvzZbIcxuZVSfPQ948+hmOrNcgk7Z6FiJfjKRLLH4+k+fEaMbtAb/LTmLKCcwC
         W8J3KVQ4V8SeoDZXt+5WqxpvixapefH65qYD15yyKbXgb7HHlRiLY+K3SfB+bWhejCHL
         Z+aut5rcWSqX5rUng/fsiqmsIfDZeAE8SgWrcMxx3fF53JWSJv4GhSPRoIyilflCB5VF
         yrF6JCAXXUA3LsABVSUBlA7kxT2NgGSkqqRYa97GobHUj/d6sdS8SLyld4DR/d0+/wmN
         TZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746720002; x=1747324802;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YS0Xnbw81nX59SdK0HAxNgdPMxZ888/mJK0SILf8DlE=;
        b=qGEYD5GlshqpKe9jBpWJTXwSCPyL01FtZq6ZjqYPOrUZS1G2vDmkwf5uQ5dz5/vuqW
         I/7+KIAusy/qKkW5f93O9myscbIs9RLDCzB+OgDisTyriIPk2Y1nOsiANpaBTuZL8dE9
         uZKzWdpO5QAoZg4vUXridEi+IMX9A/OIrKIPX5g7hqGFY7i5E9KurRFdzXCtkCLhUY7o
         hUd5PipFXqxiVeOlvQ2UgXViZC6DqZmWsi8WgyKlaLasikFwROAh4RMtquvNowzvRh3R
         VB1FEFEn211Fqcuuy6pNCav8YPuVRNiO3sV+wpE+hjKBFPYWAs24Ez3cxJfj1BqEOZNd
         FJvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzP8iETxZ7tBknz4VBMvuFA8k1Ubtp6k2eqD+3iriP7zoaAolLsMfnhKglnQ6MiOEvf5lDByOWee31@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe29oCgvev8tTzK+gXhbGvuZWHUpKI1AYkS9FK6EpR0NqbB+Ay
	NCPbjX1ICqIMlI9KU6jssPoIBTITDV+xXKx2AtvUwHcVPFqSpLKo3dEefUFyGNA=
X-Gm-Gg: ASbGncuMi90YanpJZX7UwsJZfe7HvYaYi4Q3RlqJRLTpYeGYs7rGE/TobgA8UCqQRbY
	olvUe2hl7La7Hy/mHSxLOqlju8WozpsOHPiTt7L21+5ios+RKPFL0tm4bOArVYKkvrBgDfuZnnU
	iobxNdHSORecu3aPkHuYYGGXKbsBw1U/ntCy1CL5PUxYt7ga1yTIv8s17KbMwdElooXEC3mNXHz
	n6Kt5bkae50TqaMAcKFBaRNbj25Y83M8sGwDW8JWVo//3J+qyL1+WrimwNzpx58P+A5TmYxJ1Qk
	5C19D9Z0MXe/LXcQohA4rzRFueHxScot87ntbkfw2Fm/14tEcmWOQAB+FfVI7VUBGuu566PE
X-Google-Smtp-Source: AGHT+IEvpHsTy01Eo4gysKeG+qM4D5wZ8KIr/xTJMUG/QfjziBf3FyN/tL93852mL28CaKMQiLmseQ==
X-Received: by 2002:a5d:64e2:0:b0:3a1:d06c:4e5c with SMTP id ffacd0b85a97d-3a1d06c4ee3mr1123892f8f.26.1746720001821;
        Thu, 08 May 2025 09:00:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d676ef1csm43535e9.0.2025.05.08.09.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 09:00:01 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250507-topic-misc-truly-nt35597-yaml-v1-1-bc719ad8dfff@linaro.org>
References: <20250507-topic-misc-truly-nt35597-yaml-v1-1-bc719ad8dfff@linaro.org>
Subject: Re: [PATCH] dt-bindings: display: panel: convert truly,nt35597.txt
 to dt-schema
Message-Id: <174672000108.3610792.1743383876535805505.b4-ty@linaro.org>
Date: Thu, 08 May 2025 18:00:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Wed, 07 May 2025 11:19:21 +0200, Neil Armstrong wrote:
> Convert the Truly NT35597 2K display panel bindings to dt-schema.
> 
> The vdispp-supply & vdispn-supply are not marked as required since
> in practice they are not defined in sdm845-mtp.dts which is the
> only used of these bindings.
> 
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: display: panel: convert truly,nt35597.txt to dt-schema
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0e7c523c58dd46e417963a9878971bf74026083a

-- 
Neil


