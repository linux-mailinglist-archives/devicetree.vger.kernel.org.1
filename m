Return-Path: <devicetree+bounces-43385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2A385A36E
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 13:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D34B1F224F2
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F037436103;
	Mon, 19 Feb 2024 12:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iPbHtQk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECFC364AB
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708345857; cv=none; b=TiD7fS/tVC4vB0+A/1OSFK9F6eBT/9Zwe3VHxh/zDJ+AGs9Ibrv3hsDMF4ye9+V8C40oMlux1jNfaSFg3rcVMmgIWnexwS92azSjJKXNLkSqDFXxojENUX0VNhBsEIYVIdsb6Yyz1m4Xc7x3iJQlgf8vyqVkGew7ljFmGaeF0uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708345857; c=relaxed/simple;
	bh=j2VOr3/LhJl7dc0tbZ1tSvDVzz/kS8XklbTcALRThk0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=s6ug9uCh8A6k1BFpUlx5i0p6M5ZTQkq53w3DZylFstaMXcq+oeDcE8icq9qtUyprG4YjNmJdm0IP1FyYOsb6/idZ7THWXOU+44YreE9E1RSNkNeD+29bvEpcJ2l4jM5PqBrjarQvQh1VeRPFzYJZcf0nLCe4FO+rgQ4vdcKbtzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iPbHtQk2; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5101cd91017so5494641e87.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 04:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708345854; x=1708950654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InV03Ory8WK5p4H1r4kGN4/4DZ3sZm57s/DE6ff4jSU=;
        b=iPbHtQk2hA9IzK/7b779utZGGGsgX4sJxgC7GhXciivu4Tz0VJNdny/O1VSK2ueiNw
         7GVVf6jNtmF3+7C5Zb8Jg08L2AlJTQPaxnKgmRIkKrpg460TkfEe/cVOIcvLJLI7L1YG
         iw8b9DjMPn0JmbLZvYagnKzBRsGH0ZKmgv7wPmejjYiTq0D2VL9vmPl1Ib/uazKkgPae
         ObjHnvclLgAvtbQi8NkcNSErznAXpjYTMzBqrusnKWy5ZYAmj8jDLnfIvgtnqeJ3xkCv
         n+FZN0D+/EAqnxu5WcdDXFhSUZCipRf8Lj83ehAfvEj7CPiOM0767gvD8vNj1rWIHEhN
         /nbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708345854; x=1708950654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=InV03Ory8WK5p4H1r4kGN4/4DZ3sZm57s/DE6ff4jSU=;
        b=eBOSmakYDmF0h3FmmccL+xJ5teOu++WwPuwvIwmdsu8IkPM7ehqqMhZu1XXVOg3Vja
         d0AMQUj1KGto2QhGICqT7Ji8jWy27KS/aM5mrFDY/Kbw7Vw3J673Y9JUhIwRSh49etRJ
         cii1Hhu8fbymFYrZRerp/FYnNNtZBn8Cd5wLbcINzfUXxQ86As+XWTNhP9nSGQvdMoTi
         +GbW+gfb7Adn9aeosR0i9HldJ8GWJvrZx1iGTkbdY91SvPtcrVUfA5gcVdUsxv5xZrz9
         VcJrIvlp99rVta075M3r3es8iwYnhmKvtie0EIfxpQyEM1hcAO1+0wwJR7UDFoCbIZPT
         qjug==
X-Forwarded-Encrypted: i=1; AJvYcCV2KZ0zg4LOQtzj+eBCqMgm6Z6S7e8CW2UQwHr1D16IzPbdigBB2sD9MbwVWw9YEjm2CMdyluRqWYfiKUR1R83jGRWb6rJUZdro3g==
X-Gm-Message-State: AOJu0YwA7CIhEZJp0nFx49Bg7miXrKRPBoXsmvnhw2tKGn4yIjfKffn5
	AW5jFIdSRULzQtuWNviDqhjCqy/D/jWGznEKWG5pI7Ubal2vISLx3TLnKVfzHZg=
X-Google-Smtp-Source: AGHT+IEcY4yQmQxAJ4WiHYNwm13YvwEPV231BSoILkJGjdFG/MMBbHe/M71wgEdW0/b/Egu1Mq4h0g==
X-Received: by 2002:a05:6512:3ba8:b0:512:a743:3ce3 with SMTP id g40-20020a0565123ba800b00512a7433ce3mr4488709lfv.23.1708345854485;
        Mon, 19 Feb 2024 04:30:54 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i6-20020ac25226000000b00512bde4cddfsm90466lfl.148.2024.02.19.04.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 04:30:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: msm: sm8650-mdss: Add missing explicit "additionalProperties"
Date: Mon, 19 Feb 2024 14:30:43 +0200
Message-Id: <170834569504.2610898.11072295234530995616.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202222338.1652333-1-robh@kernel.org>
References: <20240202222338.1652333-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 02 Feb 2024 16:23:37 -0600, Rob Herring wrote:
> In order to check schemas for missing additionalProperties or
> unevaluatedProperties, cases allowing extra properties must be explicit.
> 
> 

Applied, thanks!

[1/1] dt-bindings: display: msm: sm8650-mdss: Add missing explicit "additionalProperties"
      https://gitlab.freedesktop.org/lumag/msm/-/commit/4825b207002a

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

