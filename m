Return-Path: <devicetree+bounces-140441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F300A19BC2
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 01:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0AF618868CB
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 00:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0CB3596E;
	Thu, 23 Jan 2025 00:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R3TiCVvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D085435972
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 00:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737591911; cv=none; b=fNeQD+YixaCaWmZ09rpE2PXU663OVyYfuMmWd4eVdYmLI21X+xSI2EAsy+3xPb1bBMAJlT0ejD0PcS6yURIM/pQ5ljyoJZQdbxSyUo0h9cUexR8nZ5ypVphEwvniBZsujowZBxqcfMZXyFsEkf0GQmIFTYeK8Ve9a/I9GZq0qOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737591911; c=relaxed/simple;
	bh=dpixZz/z2G0JYG3X6KrDyt/ZUZbnxL1xxbr8djdHVwY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CJ3joqqQ2vOvt6jzxiAVIx50tmLnG1BEMAMxo6a7gTGc3hGVZ6jODZXcgRY0K5CWiPZ+fvZSuc/x6XM/s8XuMtZP6xAHhfd0O1MNzYThuppDVvJsgp+Qd4WzkCxvvpqDCacEAZBIuz643KCeMJmXeJ5rZT9QV7kz+AJ1uG89BLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=R3TiCVvX; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so1771936e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 16:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737591906; x=1738196706; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dpixZz/z2G0JYG3X6KrDyt/ZUZbnxL1xxbr8djdHVwY=;
        b=R3TiCVvXNr4sBJlreAfW0Ri3607z+vjR6aOQqdtHRp1jeGFKUTvWF8aClyJMUqVqj7
         Org0TLirfnmQBdAalVO6RHZxEeBFs7J3Dt9QL/Rb4boZpAgipIh2gi/Pnz1ZqR4bq/Ph
         hPIru4Wdv2cx2KJjUWkRkB+J3yuqTtjfiG2PM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737591906; x=1738196706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dpixZz/z2G0JYG3X6KrDyt/ZUZbnxL1xxbr8djdHVwY=;
        b=Eoa6jC2C44lbYd3a/S2y5ioRJT5GTtxsiTegw2gVGFOcC+crgFNijJxDkv23VanSkz
         mRIRZg3nu+gddgVB0WNb2qGYlhYkqf96vV4KRAnDlQfxJKiZYsfMh9KBnIDoFIbLiYIV
         y+l9RRc/XGk25Tke7gtZKshLV7pkRoHUPVP33aqhhiETh2nKyZE1dtkmxavyev3QGFr0
         htkOG1aGt76On/+tD+p0y4Fxwb12QUxa0DSd/IylMtV0p4tTUbQ5HYih/UoZNtenhVPi
         qW1jJUPpFis0qDOivmD3S/CAazI2gzwqM+UuRBGxDjrWf2rWXuFxY9tC51h52REIQ7O6
         Vr8w==
X-Forwarded-Encrypted: i=1; AJvYcCVtlWLVs7jqHUAs7LGWXoHU9OyGlxpYKjNVMSxPqHXVmbX5hciG3syc8Sa9zLCFXvzhKVXUbwTpoWUZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4lkmO1YIsNkMLHv7FSfVmbKZI8AbvEef0wsI4Rmv3Dd1KOZgJ
	JIb3xJBQJdxKHZpbj6RT+yf2shfYg1M0jKhvWhZFW8BfrCpZpVf6OJO07xkZzIXudaYJraXIZ75
	KDw==
X-Gm-Gg: ASbGncsBQPgJVYQmUaDxnxx4y2c18gWmsimndWE8fj4VWqDvMsXTkoJpeRWVSyN+Cji
	PpIdc0cu4ZxV6zOMgutg0S7/lrnFCh+MyMWVFAeH41Sksb/Rzoi5mPlhY6mTlIstHFUnxEueucQ
	IaKaMJ+RHBBcI4nPfcwovjSVJq9y+ByfNhIyI4Cq35JmW/Xm2cIm06vJVRAy7KH1wSTrrGuv/m+
	FItF+/rEdlxSQkL/4hbUdmUCbO8mkRcJPQPAcyakfUr2mW+Ku3AKOn/XXC5wkOwDSjDxRzKTORm
	4HB4VPDmRHN1JfLQ+8yNzdmuuOFx5VH5zQ==
X-Google-Smtp-Source: AGHT+IF/gYZMWO82o4P1PbS3Yk8ZlhuE3URNu5TI7icHWMtjslhxEHX4lMkt1DXMhuwlqLk+nIy0SQ==
X-Received: by 2002:a05:6512:3d14:b0:540:2247:ac4e with SMTP id 2adb3069b0e04-543c2218e09mr283746e87.7.1737591906238;
        Wed, 22 Jan 2025 16:25:06 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af0eb30sm2422061e87.92.2025.01.22.16.25.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 16:25:04 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so1771898e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 16:25:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVpntD88iK+Gze9TDhSMbreUaR/p5sJ4xn2czSVx7Q1YWY87CvkNiIswfCGbQCYsaKdoTvpzlx/U4+Q@vger.kernel.org
X-Received: by 2002:a05:6512:159d:b0:542:23b2:8010 with SMTP id
 2adb3069b0e04-543c22820e7mr282716e87.23.1737591904301; Wed, 22 Jan 2025
 16:25:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
 <CA++9cvo18fMuaf+iPeXgMA2_+QMJ3YCAY1=odG31NKO3s5Vt4Q@mail.gmail.com>
In-Reply-To: <CA++9cvo18fMuaf+iPeXgMA2_+QMJ3YCAY1=odG31NKO3s5Vt4Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 22 Jan 2025 16:24:52 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xh5b+Jp99ODgo9U9bNLFcQgWQpHfjMa7odpCC9kkPyZw@mail.gmail.com>
X-Gm-Features: AbW1kvar_y-MjkcKaCAIlsgDN5HUYN3Y6Yvca_ie2q-8gRXANd0RQrIq3Hi3vLI
Message-ID: <CAD=FV=Xh5b+Jp99ODgo9U9bNLFcQgWQpHfjMa7odpCC9kkPyZw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Resend and include all necessary To entries
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	thierry.reding@gmail.com, sam@ravnborg.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Xinxiong Xu <xuxinxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jan 22, 2025 at 1:30=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> Hi Doug,
> Can you spare some time to help review it? Thanks a lot.

Sure. Let me see if I can figure out what's here:

v1:
- both panel patches got reviewed-by from Neil (nice!)
- wasn't well threaded
- After v4 was already out there, Dmitry replied to the cover letter
asking for bindings. You pointed him at v4, which doesn't seem to
exist?

v2:
- Krzysztof pointed out the lack of CCs
- Krzysztof pointed out broken threading.
- Krzysztof asked you to sort the bindings alphabetically ("k" for
"kingdisplay" doesn't come after "s" for "starry").
- Krzysztof suggested you make the bindings patch into one patch for
both panels.
- Krzysztof asked you to reword the bindings patch description to just
be one sentence: "Add a new compatible for foo bar panel ...".

v3:
- Seems to have proper threading.
- Seems to have better CCs.
- Krzysztof's other 3 requests were ignored. Krzysztof asked you to
make sure you follow all suggestions or say why you didn't.
- One of Krzysztof's replies to v3 seems to imply that you were still
missing some CCs, but I think he was mistaken here. The CCs look fine.


So summary is that you've already got a Reviewed-by for the two panel
patches but you need the bindings ones. It sounds like if you just
take Krzysztof's feedback and send a V4 that he'll likely give you a
Reviewed-by tag.


A few further notes:
- Usually you should make sure you don't send more than one version of
a patch series per day. It looks like you sent several previous
versions of your series in one day and that can overwhelm people.

- When you replied to your cover letter adding me, you didn't reply in
"Plain-Text" mode. That means anyone on the mailing lists (including
the archives) won't see it. Please use Plain-Text email when working
with the upstream mailing lists.

- The cover letter currently has the subject "Resend and include all
necessary To entries". The cover letter SUBJECT shouldn't be a version
history. The version history is contained in the cover letter body,
not the subject. The cover letter for all 3 versions should have had a
subject like "drm/panel: support kingdisplay-kd110n11-51ie and
starry-2082109qfh040022-50e MIPI-DSI panels"


-Doug

