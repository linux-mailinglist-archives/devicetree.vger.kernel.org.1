Return-Path: <devicetree+bounces-113642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1182A9A67F8
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF26AB250FA
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C44B1F893C;
	Mon, 21 Oct 2024 12:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tVJJHWnT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438861F8903
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729513077; cv=none; b=uJ3ep5S/26D168yR5vT3P6Ro1AUumGcsKDyjr/W3jnAsExCAvvWk5cPdq8YQLqW/ClR3rRBN883eVuP+5D31i5xm623fu/AQAOsTWuxbFWNG7wxste4htQIMECcDJdu/OYOGpIVYEjc2MyZQiqY728HkMUOccZJvV+x8ff1j7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729513077; c=relaxed/simple;
	bh=D9V+xTdETJ8ksaQ5r5b/gY+O3zvjqoic5a/qlmpRsW8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T3hgEJIFsRriafXtMDox/JZawEcS0adH7Gol1rq4pBVlhAs+ikBwCqFGrSalH5e0XtomThC5TqYIuU+lEkc2LwpBmtaZIIpUE3Aj7G5LJ3+F6ze6LAy8ZLw+B0x+mueTauKnO4TypXStDr153dwppcBFvdtK/Pfi0SmkHke47b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tVJJHWnT; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb443746b8so44697441fa.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729513073; x=1730117873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++p6IK2xyUkmxIiDtF8Kg/j4cQViLTJqoFU8d2o1atw=;
        b=tVJJHWnTrNT8cTlWKDsDbJVxXw1wsxXI5hXj0vdxiCq4qpGbOX0zG47qGvJDkudmZM
         uoTBKcGj73Be6DYytuGCsCfQHhWB27WgAim2dxmFsjWjh6lQAkduDgv0QDRaLZpH9YQj
         +5BoUZOBL9blJ8+1Bf7sHd10HVcBiStpRgiku18EKjaK4kXb33BN8d05ZyjAjs31pxBx
         NlKphNml6dqTGf305Uuwc/XdHL93iIxfm5ABDU9+JpFp2btLeZtXnAQeBOCXbAbC+zfK
         Xb6sHMr33D9zsiS3rDwTFqQ59HQ5Od8sIHV3urxH2BNGQ+XgbAozGLJkt7RjGbk/2aau
         KUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729513073; x=1730117873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=++p6IK2xyUkmxIiDtF8Kg/j4cQViLTJqoFU8d2o1atw=;
        b=mm0HltcuQ1qcu5avQPmEyXeCsr0D92o4UCtrHyClpeyFJFpW2VEBVtCbXkriNmYwXU
         aAPnlTwXleiky+sZIGHIEXdgm5taPvvqgaWeSVeDK5tZ0VsWATY2ZKGLi35GIImSF+h9
         tPFuYxjdU2BHDVO3/ITukIRFEnDrzj0mfEyrst7uIX33kvNWnhTX0vVUCsCUuWPWId0Z
         FqUBXvh7F8eVeLsTI5/lc+l3g6RfzprUzCA37Css9/SyeSZspRRfrU/eSfUzjOPl5MP9
         Zd7k6uiBo4pFu+hAVNVrAhO8Zb9YL4xw7aFWqsv5DToMDEEIx7HJoRJ+uQWH2RwyYJKb
         2lWA==
X-Forwarded-Encrypted: i=1; AJvYcCU3E4teiaafz3gM2ASZzZIpZrC6GIrvpnFnzW3ObcLAiZ+/EXINnXjISEFYHdgaI4tAQgblzmyOOIUw@vger.kernel.org
X-Gm-Message-State: AOJu0YxmR+BplHavLhrWwcW74nixJLomtZsVLeKQp6U9si1/J/O9k60o
	H80kfDKtzRrOyJre7NPobeqVQLqeA8xc15G24I3CBE0BV+klDXlPtbvDMi02dYU=
X-Google-Smtp-Source: AGHT+IEaBDgO0bJNd009iFuyYoVj9ZrfomLRDAMi/yxMGgNzbZQlm++57S0iUYR+s+bCy7ZAO9vNng==
X-Received: by 2002:a05:6512:2356:b0:539:e317:b05f with SMTP id 2adb3069b0e04-53a15229d00mr5612912e87.28.1729513073320;
        Mon, 21 Oct 2024 05:17:53 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22431454sm464210e87.212.2024.10.21.05.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:17:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	konradybcio@kernel.org,
	andersson@kernel.org,
	simona@ffwll.ch,
	abel.vesa@linaro.org,
	robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	marijn.suijten@somainline.org,
	airlied@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quic_khsieh@quicinc.com,
	quic_parellan@quicinc.com,
	quic_bjorande@quicinc.com,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	quic_riteshk@quicinc.com,
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v5 0/5] Add support for DisplayPort on SA8775P platform
Date: Mon, 21 Oct 2024 15:17:42 +0300
Message-Id: <172950935864.2053501.518573859877352853.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
References: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 18 Oct 2024 12:37:01 +0530, Soutrik Mukhopadhyay wrote:
> This series adds support for the DisplayPort controller
> and eDP PHY v5 found on the Qualcomm SA8775P platform.
> 

Applied, thanks!

[4/5] dt-bindings: display: msm: dp-controller: document SA8775P compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/c51ff89a8139
[5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
      https://gitlab.freedesktop.org/lumag/msm/-/commit/dcb380d19e58

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

