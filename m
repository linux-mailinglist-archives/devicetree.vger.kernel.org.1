Return-Path: <devicetree+bounces-170913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2008A9CB0D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 16:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B658F7B5BF5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 14:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0462512FC;
	Fri, 25 Apr 2025 14:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SC+ONQvD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1212271747
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745589908; cv=none; b=JsamfH1+lGeCVxJYi/fyBSad9DifcRM2nP9J5t4mNqBPtkT7thi2v+HpzSvGFsKscUO02E8ysLXvsv5oVRw2sLKA62ryP5IE64h3YpxahQxn2G/jhhJmkYFy4XsTaWAUhzN35BWlTMKJf0ciYo9Se//UtVWH6J/HKkiA691Vp8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745589908; c=relaxed/simple;
	bh=tcriv+/Nzx4S273xik7czZ9fG6dM7aE9NlAHA+tSzps=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hTDtftXyTPBFsZlbgPGcMM3xcf9MQu0jtIC/3qtPA65SMRIe5U7wK3hHZij67GL4G5vsFglVIuxh+NFmsJLk+cIUtZpuhiBg2bK5frppLomvOtfSZR5HcYFB3S9Dqx36NQ5iwA8WIOR/OwvBzrLVNOpAkfpjMN1roqX3XgK1Lls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SC+ONQvD; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54ac9d57173so3654954e87.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 07:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745589905; x=1746194705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tcriv+/Nzx4S273xik7czZ9fG6dM7aE9NlAHA+tSzps=;
        b=SC+ONQvDbiYFy01d4omapiKvn39KpehK5BEuSwv5g4PfjyepR50fLNcxaFJ/jWtqe9
         dBTKqFB2g5zkDP3y+3bGletOoa8w467tPoJygpStM7SQkTm+BbC2mFeAEcA8aufrPfvj
         TQlpjRLWfknTa7/AFnQCjehpAR/FlqWnz2PRBLxI7/LcO0YYVd6BZcmh9RLjncAl+wwR
         4gj9Oc0mX0E+xhJ+5hcLviuHIB1jvfFNcBle66RVPKHTZ9DCSx4Vc/kTsPZs6dQdEoqZ
         OomwfYAWwfNnFSdCthtyCg92OD+wdLsXTTgUcOXfyeowDH3QPxw2SE3QPoLGXSxiNy+i
         +Oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745589905; x=1746194705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tcriv+/Nzx4S273xik7czZ9fG6dM7aE9NlAHA+tSzps=;
        b=g/wzJj2lDjXYZeoLmilalPtAPx/KrGGgd6p8CSo6WLdCovAJL7tS8tK+8ho5ggkd4h
         J7NEXXrNoSne6eJJX4uTVdhlXDyuWb4B3/RzqcYzUqoADxkNA9c3xH+XjHpEt7OHoeYQ
         m4L8Kmv3zARvDwPPRkyRAtlpJxOFbvJaEPs0+p405RkJgnrhLrf1XmJVQRGkC8IMSnmX
         j1o2EGy55xFEpLB7OVkqC2DnSKPnIy5tYCt2h8Sctq9HYrF3Y9CmkuYlmPodZ7FvzN0C
         0P0MrSyElxLbKyA5I/d2vE7/432CHho9dshiOQDzoZg66wA1obn3D0vGwW9z53Jb+oT2
         /opA==
X-Forwarded-Encrypted: i=1; AJvYcCU58LsKHqWL7sMUozS2vgNPblCVMJlSAELyXZ5qU1FXO9mbQhXYbSbiLvxdtSQCuI4dsWBVYYFQKDwJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwUVjjUjg7quAXyvkjJynwnZyrjG7uNxiung9YcKh4lkw0oQXd1
	s1Rh4fs7FSn+GCNmycwghva0ODDxgKGJRKTatokW1qlrXjWpqedoOWB48JGFplzxgY8KfgpWbrS
	k2Mj4cnXMIoU4zLU+s/M7mDtTgwM=
X-Gm-Gg: ASbGncsxw369IAr01i6JazJH3B16xvy8RVTlKo0nXEczeIkw/OX3B1xkZikwL5/9+3S
	6ClJO8hI76leCwl3pdQ/yZyFRlhb9Vndj84s2uMoJZhKK60p7mvVsSlER7UlBWeeMO8Uo2KIBzx
	Wn0/7IgRjTt2k3uE5HIoy/gChyik9TMNzw0y8P7qRe5/o4lisS0N0Rig==
X-Google-Smtp-Source: AGHT+IGbNXTCJsd/v72rtI2+cHQDztvohzJr5dz6aN/tePTwECFs4nHLzaitujZr66nLWZDPS/2mWZOnrI3HOKGrkSY=
X-Received: by 2002:a05:651c:2122:b0:309:20da:6188 with SMTP id
 38308e7fff4ca-318ffdf116bmr8233811fa.6.1745589904734; Fri, 25 Apr 2025
 07:05:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250422115055.575753-1-xu.yang_2@nxp.com>
In-Reply-To: <20250422115055.575753-1-xu.yang_2@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 25 Apr 2025 11:04:53 -0300
X-Gm-Features: ATxdqUEgpFP6h3MmeDD8gkXynHJJDhY21-j6QnWVvr_oXvPD0yYjjdca-jszP7M
Message-ID: <CAOMZO5BrENeZ2A1erDupCTfMypX-Pd482o1N1eF+wKEL3X7HZQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] usb: typec: Stub out typec_switch APIs when CONFIG_TYPEC=n
To: Xu Yang <xu.yang_2@nxp.com>
Cc: krzk@kernel.org, myungjoo.ham@samsung.com, cw00.choi@samsung.com, 
	robh@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	swboyd@chromium.org, heikki.krogerus@linux.intel.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, jun.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 22, 2025 at 8:49=E2=80=AFAM Xu Yang <xu.yang_2@nxp.com> wrote:
>
> From: Stephen Boyd <swboyd@chromium.org>
>
> Ease driver development by adding stubs for the typec_switch APIs when
> CONFIG_TYPEC=3Dn. Copy the same method used for the typec_mux APIs to be
> consistent.
>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

You missed adding your Signed-off-by tag.

