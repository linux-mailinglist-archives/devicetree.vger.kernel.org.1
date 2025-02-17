Return-Path: <devicetree+bounces-147334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFFAA37FB6
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 11:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1FE63A2B1A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7BD216E28;
	Mon, 17 Feb 2025 10:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="idJ5TLGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F951216E1C
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739787468; cv=none; b=TOXDq0pIWTUijfJLv/UPZJ2O+ANvq3zVRUwPa3ma2F5rkiFHFhgZCZSlR+PLF+S/h4iU/PI4SkRjMfiXz+NSX5CQa5JPZ4qFhePiDOFuCUqYvj+Nu28yQThv43VgPNtd0maY9+thk7m/hc/wsVRxP6QjC9nDzDf8nIBhka8L6t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739787468; c=relaxed/simple;
	bh=C8oQLmUMWdk/0Uf4pWNBm6gUM2mwuJx5zdQChad1smw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZE6l8KG3BJ3Sbni995z/I6b8jDXIeewbZ5kbnL7hlZlOoe5bOWX3ILYUVHNdDWlt7rEzm8ihvvnT61iKOpbegxNGwGWYBCHznhUZ7greGX455oZSM8Yd3vxoWA3eSo9rwkgH0bWr5JnRQ08rWR6Etw7lbL+f+3HnkKVSbVmI6Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=idJ5TLGy; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38f2f748128so1225802f8f.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 02:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739787465; x=1740392265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjnizhfij0DxrLOw16h1FTCOX0FfuFrLDYVy7emG8Tk=;
        b=idJ5TLGybWhIQQQ2Jcf7wWlACchNFWnOvazSl9p9uKCiLjVWe32I3BJqpSu9knKpdG
         8T4MQXiPeX+Q5oZOtfQdFsYTCgPZmymSVReeP1lePkKti2LlGPU4U4w5SY6sa8ThRkJN
         5hlE/jrnB6yukzgZZ+QUYZyzoFRMOMda7hopbQU4GFEap2Rc/Czej7yt5AoQwnDXH1yZ
         SnRBjPj7Cf4Hd/xk0w6RII/udMo4dA3/C9RjtePUF7eRx5rpHfeI2qgAv72ChC0URg0t
         qayAskWq3/RTT4WFZrNhxftMLb9ml18w73LqQiw2tGXi7Ln88uYFFrZCLBxNpf/JtLNb
         f+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739787465; x=1740392265;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sjnizhfij0DxrLOw16h1FTCOX0FfuFrLDYVy7emG8Tk=;
        b=c09Ez4Cabyu7yJTaKvKkCBb9kH2GsfAMeVenaArpp0gfCU0OO09FIA7C1aSZsNIQcj
         Jx0o58sI7iOoDppDVWfVKl0MP/33kEP8gGxD1DQL1U3RAomh3dGv68CRY9fYNpe6vkOK
         fMWc9CulpvK0MMD5tDA2TqWABe5fZHqwHjnVnO6Hyzrt4zWVlCL6gT2FLmU3CLE44Joc
         +cFIfHt6LsFX+28t4uPwra2F2BIYhJiiJdbMroLu+hxQRHl6g8wcMzUqniJXMZHi5TO4
         2cOpccAez4t7aS8Znzlz0LmfN8jsrm93NIZFBBwo9Io6jk8tTUr/SxlEJJBsKOxHUr2y
         owsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYYz+VElJceK/BS61H5eHD7phzD4QRxwlMQaI49x2ozSQ7T50gG8qTXFVkJB47z7rWM7xmK0ZQL56Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzF3ccQUfjOaZbhMFBxA/mPq1UaHCVZ/Wuuf6qiqUUmI8naMJ6A
	GJsHYe+r524K3eYkY5CyM4VGgdogojg2dLtOePOKspCpEI9oww9POI1fdXcCAnM=
X-Gm-Gg: ASbGnctqmisK3fwKpRuVIXWSbnSbfLWjZpX0kOZLbYyjwoclExV2zE1wwWyeVfq97BE
	vUeMKOuoDsDhoI6mh3ipkkmJlQFurJqF4uMPA2kKpi5ar+RSxT/AHBA9aIQmojpRxrsQNJQj7+N
	idcPTzJzYXpudVpR86XcsgNuUsFZTqZoaZ321/7RcJJ8T5RZ9Ib3lUhZlgDkKCRsPeJqjxQmj1x
	LdwPH77pYMZRwmH5nh62sA+R5x30z7XcB3mc0s5WPWergLIzy6TCZ0zGkRzYYOHnPPqmZt1MQzg
	5bs1YjoriS6qGTXXF9gqTM/PMytt6A1fWw==
X-Google-Smtp-Source: AGHT+IF7XwyAqsyVybUOb+YT3My0TlrSfzZx4U/CaLhTm/XLeIcngPTFZD0Vb4ytwztWX6MVo98cdg==
X-Received: by 2002:a05:6000:402c:b0:38f:3a5d:e62f with SMTP id ffacd0b85a97d-38f3a5dea23mr6895087f8f.33.1739787464671;
        Mon, 17 Feb 2025 02:17:44 -0800 (PST)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258dcc50sm12046297f8f.34.2025.02.17.02.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 02:17:44 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20250109-x1e-speedbin-b4-v1-0-009e812b7f2a@quicinc.com>
References: <20250109-x1e-speedbin-b4-v1-0-009e812b7f2a@quicinc.com>
Subject: Re: (subset) [PATCH RFC 0/4] Support for Adreno X1-85 Speedbin
 along with new OPP levels
Message-Id: <173978746391.27110.17465291668859357570.b4-ty@linaro.org>
Date: Mon, 17 Feb 2025 10:17:43 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Thu, 09 Jan 2025 04:12:37 +0530, Akhil P Oommen wrote:
> This series adds gpu speedbin support for Adreno X1-85 GPU along with
> additional OPP levels. Because the higher OPPs require GPU ACD feature,
> this series has dependency on the GPU ACD support series [1]. Also,
> there is dependency on dimtry's series which fixes dword alignment in
> nvmem driver [2]. We need a small fix up on top of that and that is
> being discussed there. Hence, the RFC tag.
> 
> [...]

Applied, thanks!

[3/4] dt-bindings: nvmem: qfprom: Add X1E80100 compatible
      commit: 3419bdfd88e314bc5f80b02fa4651c81a0a85b57

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


