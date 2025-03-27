Return-Path: <devicetree+bounces-161255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DFEA73347
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FA86177BB1
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C6C2153E7;
	Thu, 27 Mar 2025 13:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ETwnPzJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA76215191
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743081643; cv=none; b=XauYELiv3QAJZNiWB62Qv1cbOZw8IaMzYU6uQau5ouIV7YSum0j90Drw+7FbvmE+VcaflHdEVeLAnz6a1hhvnptICExi4GM3CgDSBLIL/ob1W6AtO+OwUj0s2krvL4ZUqk/e/JCtudPBfsfvoMTpIqrpuUBPfeX1zvw/4b2m+D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743081643; c=relaxed/simple;
	bh=VAC3jQYsjcnCVrZPAH4JIcMHqf1bqzRC+I0sVF5JOrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LfbTVAtuKsotXsAXETcnT9Lf0aOVdGoK2tOZhu/zRCaLjEsAHfLjtdaDWI9Ft4s8fvQAZNtDhICeQZtyLunfzx1NmcK1X717F3nkoIZyIID1F31PMiec5DoihiR8ZDugnE/4NdESvxdORFqhornK5M7UF2ZxyNbXCldXSvu78hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ETwnPzJe; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso10440645e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 06:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743081640; x=1743686440; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VAC3jQYsjcnCVrZPAH4JIcMHqf1bqzRC+I0sVF5JOrQ=;
        b=ETwnPzJebUhQSnpmL8nYgyp+8ZngjFOqQN61z7BX5cBWAsA4+a8CevIS4++y95u391
         RSnp4i56dPfb7m0euFbFTJUiYMGuVGs3Lp0OgQkQzIF/z5wvdHbm60x9VMJQ4S33oOVA
         WoSkCKkB68Y203K5dN28Ep8Icz6vKj+5HmenxUuVM68W2Zf4C6ztkw1VL4q3ovItUHqk
         4yYGSKrfwQ4OmK/1qpKYd6iS71/GJaGikvITVv//62zg5Gvl5grACwk6rmXYieGgXSbg
         wg42ROMLWszGM9gK6Wyv06s1m6yQBIGvQ/NWB4kHC0VCVTk053k7wrAzZQxVi96NmXj8
         JofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743081640; x=1743686440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VAC3jQYsjcnCVrZPAH4JIcMHqf1bqzRC+I0sVF5JOrQ=;
        b=bWVnaqojkBEGl536ErPRGCqSmC27pdaCEEk6qce3CzpBdDj3CzMNxvqLQqvub+lZXj
         h0CCswRj+xYXoXy3x1DOUNOUfTOxiIIXGxKWrIcMKJwqMRTsv4Alf01qLef/36lxtDr0
         hisl8t4gGS/mlUbttQvEBuRsvOt2Vj1H6cQnTNjBc/5GYzcYvHHB+kwDbakIw/9rSJLM
         v1lDM8ND0quwGtS8d5u+j56aj8fL65pqGCqCLTeeZMGHOgWuoydXSiUJNOs9IGjUTGGe
         XiZs8SGfYiuXB+2HOT/Wj13FGfUfAXGm5DVvPXyHhBzEIvXDXWGqylZp9vwQTpNdZNgA
         HvzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWubMg3qHW/zFUojnCjcH5BKzXl43YZCigIkWm46HTWAS+4A+PQjU53ugs9USvuvb+mzv/UpCNjElLM@vger.kernel.org
X-Gm-Message-State: AOJu0YxI6+W8+ljVxYSH0vUvjMb+ooXdTLiyJqlFBaFJ+HuWzHGol/FD
	/2bz4nGnJmeeueuMuNkZn9TVxG30dxQdtgyuZ7t+Ag//fquJ1s5NlhqtOXI6TxtM5TSAY51GUbT
	HRMHkn/Mtio5G1BJXkTGGDMGbfzlZcBt4SpqMoA==
X-Gm-Gg: ASbGncvYpi5HE9xaNPoQKON2Ye/5GTHJIf9zxu9//pCttfwJioc7Wyab2nG8PCt5wzj
	b2IQP/kqDdyuFZH6xAf7B9rqyBPC9rPf5t6xfvIO75/wSyi0NzxluuxtVRFicLrGM3IiG5k4iIR
	04Z5q4j1Idi0cjZ6KbfR6fsrKF4GjsUzRL0OQJ9bfsjVyisNiFOtoCFv0MvCffd+1wXnlmGQ==
X-Google-Smtp-Source: AGHT+IG3iVxfp4ue+UFXysXvz6DKi4QxLJqDrwxZD58TmfbCfjnNN1Hj7KqR62wJRNud2cz8gFthkm8XWf3losuWT5Q=
X-Received: by 2002:a05:600c:4e12:b0:43c:e8a5:87a with SMTP id
 5b1f17b1804b1-43d84fba8afmr37682355e9.16.1743081640372; Thu, 27 Mar 2025
 06:20:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-2-e9bc7c9d30cc@linaro.org> <Z+UDlXFKbmxCECp9@linaro.org>
In-Reply-To: <Z+UDlXFKbmxCECp9@linaro.org>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 27 Mar 2025 13:20:29 +0000
X-Gm-Features: AQ5f1Jrcx5M9VC1f4LvGyufiYg8Yl8JGFp1ql4ekPmK5Li1CNGcCqmgS2hBtMTc
Message-ID: <CACr-zFBRC1ZGTqX_RDERk3k52hJ=kunN6Lw6Qs-5djttfTJ3ZA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 LCD panel
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Johan Hovold <johan@kernel.org>, Rui Miguel Silva <rui.silva@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Abel,

On Thu, 27 Mar 2025 at 07:51, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 25-03-25 19:21:27, Christopher Obbard wrote:
> > The eDP panel has an HPD GPIO. Describe it in the devicetree.
> >
> > Unfortunately I cannot test this on the non-OLED model since I
> > only have access to the model with OLED (which also uses the
> > HPD GPIO).
> >
> > I believe this could be split into two patches; one adding the
> > pinctrl node and one adding the hpd gpio to the T14s devicetree.
> > But I will wait for your comments on this ;-).
>
> You should definitely drop these two paragraphs entirely from the commit
> message. Maybe add them to the cover letter.

Of course; I will do so in v3.
But hey, it made you both reply, so in a way my comment did work ;-).

Cheers!

Chris

