Return-Path: <devicetree+bounces-133884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5A09FC253
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 21:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EFEE1884367
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 20:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265832135C3;
	Tue, 24 Dec 2024 20:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LfHo5uzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457022135AA
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 20:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735072881; cv=none; b=ohHkz+Riwme2byDHkOPfouZ7jcm0R7g6ux1c2a9kXqblUrOJzdVLqnnvH9smFhkdcTuADcehuf2ROW3K/lW+bW+6ywVgdnu0/W6vewBIHu6id81u9sPOaepyHbR5lRu0Oy4zwtplaZ6OCP8tlKuwqaEYBHRoJNOff3xcWy3tEfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735072881; c=relaxed/simple;
	bh=Fsu3/+Ziayz8phheGB6uStohVClggsTiqfSkNi963fI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ewmpZazKVx3rMTtSQ+r+A3Oor4NmueR6HS0/bpwaOPwxjcSW0cqu4ZHPBXB1UBpCkGr+c6ZAqujEK55jLE4/31e3CO3wuoQTDaLDID9FMgsooiUThhzprbk6rr5rR7k67E6VACCTmw2XL7VUqbC+JXhFQBr/jM/L3MFdZ8wew3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LfHo5uzZ; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53df80eeeedso5407377e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 12:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735072876; x=1735677676; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQSshybI04o39qq+T0GEm735jU+JFiPrHVAMwlYy/aU=;
        b=LfHo5uzZdYPypnSK3BSl4IVFAl3+ZNzhNNRF4oLUdDuOiY71J28UsIx2/eanDuES9l
         FNiY6FJOqTmD98lzi9bGtRq1EkncbTkxJF2OBmI4XuRKqcJ4zk6cQV2Z/T76ukUqt9G6
         dD4F0UqsLaEE0FZ3DpK+E2neM/dzDBF9RUqMflQ5MurlZ+EUr9A12fn2irIK03f1lxFs
         qB0i5RHnpn3p9LOSGFk/TMHc7JdW5SYRH7y/uyJb43VSnuz+gynSgK6a2HNW4OhhX9qK
         FjujYNNKvCWRHopypvxGOTQvt2xaHIST2lRrZ6NLtgUFkMf3lzOqFpuVJF5s7uioZIea
         WX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735072876; x=1735677676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQSshybI04o39qq+T0GEm735jU+JFiPrHVAMwlYy/aU=;
        b=DqYSCdI72mW3hANElbbhGkFXSYXRCfJ+eDuQHkuYt5wzL4Dqmi3zane+ucKBdoaQaN
         p+JmOQbnmbMoevoRla2clPc6ZQbLFsnaAowrG0GlhyRO70U8+PpnyBveVR+TIt8nWNYe
         D6cM1FiAt1BeHbDoHBFQUrL+6wXzMUlLMPCFyG96RCEaagbWvIjJd0q7fCKJBdFQSSYS
         lojYXz/MkH9CCOs07TFlg1b+qPg6Wbp7pu1fm7x0RxIdHGDhUUqgbSkK1T4Au93gueKv
         Dey44ndJi+9ZWMVLLQJGA5gIo9kMxKGkZ4MdIKF0c+jlajzqryTlxmINoA+bmjX1nR00
         3m9g==
X-Forwarded-Encrypted: i=1; AJvYcCWPPO9sFrD/EbnkctkS0LoOEEDUCutCmxCvhoYw/9i589/QtvLnZuKzswSX+9yN1Get/KiTmGu4YcNE@vger.kernel.org
X-Gm-Message-State: AOJu0YzMTWO++4zj63mtTy6xHXtFg5GSVbFlS89GBtoLiGzpGA+EKbUE
	B8A3xZoKWiPQXsKgu6y4DEFFWTD6+665NG85am9ljfZ6apBlgfYqXvhiFyAk0rg=
X-Gm-Gg: ASbGncusiYy6hgxgxn60eAdfbIhn4hSlg45DnCNhXl7UxDO1Q5jOmjOLv23GmYu8sLm
	pv9z6K6/boZ3RByEw9spQ31f2YSJE5zzLBRZfI9HEyubogFn2mAiHYB+Px92nK9crKG14fzFBw0
	f1Ng2pxjFFdS78iuFFU7USvRzfgFEetSJLiMdphMuo+zOqe/CVHGnYRpU5szGYpE8MZgRZK+g/4
	hmOSd8EKmiS/3+QeFvnu2NxuxfRYEGxbjzuFZbbHq97ykh5iOIoE7K6TINheSuIoR3HmryX
X-Google-Smtp-Source: AGHT+IHIVDCWc9IlZCTWgDJg3QKU/MaMZhVCDsxC0gJPH5gx7lr82P2RIURz0tDa1+DSuu1PKX7gIw==
X-Received: by 2002:a05:6512:1394:b0:540:3561:666f with SMTP id 2adb3069b0e04-54229533355mr5982889e87.20.1735072876384;
        Tue, 24 Dec 2024 12:41:16 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad9bbdesm17808361fa.44.2024.12.24.12.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 12:41:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Mahadevan <quic_mahap@quicinc.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] dt-bindings: msm/dp: add support for pixel clock to driver another stream
Date: Tue, 24 Dec 2024 22:41:02 +0200
Message-Id: <173507275850.561903.4817798700815205753.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
References: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 02 Dec 2024 19:31:38 -0800, Abhinav Kumar wrote:
> On some MSM chipsets, the display port controller is capable of supporting
> two streams. To drive the second stream, the pixel clock for the corresponding
> stream needs to be enabled. In order to add the bindings for the pixel clock
> for the second stream, fixup the documentation of some of the bindings to
> clarify exactly which stream they correspond to, then add the new bindings.
> 
> In addition, to help out with reviews for dp-controller bindings, add myself
> as the maintainter.
> 
> [...]

Applied, thanks!

[4/4] dt-bindings: display: msm: dp: update maintainer entry
      https://gitlab.freedesktop.org/lumag/msm/-/commit/c36c60d1f742

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

