Return-Path: <devicetree+bounces-91114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 460AB947ECB
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 17:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76E3C288E4C
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 15:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29A4E15B104;
	Mon,  5 Aug 2024 15:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZCiF+qsC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A59158DCC
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 15:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722873391; cv=none; b=XTyal2sZtdtFNR+OptvXAy6JkjSP7/AQQRBijkGHIqaQPbTr5UrI1BeFCKdIez9+UtW5W62x9wgwHHiIoO7v6E+tNfC5W/Yr06FnK6V8tXwOVn/cxe5w1GMVDdmHYNb1zbzbmNpoyl2PDnCb/ZpcyfPeqnO9fS5lX7PA/AEYLII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722873391; c=relaxed/simple;
	bh=GhxCvF/bdB7ARkocogWvdOYN1EHnCsxdnqmhWsHwq2A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fsLUsiDPyWK38yTRA2xM+lP+lrkuMDQ9YjevkSBzJOu2No0revuYLklTHtNZZaROqvJtw4nYuZ/oGDJEzB8D5560uNRjVXfdExP5rxjbaUA9Z581PPkNm7sLDcZ8MJ7jXogiEbBPWi1hy5ueAdPqlT1L79wQlajtZeB+N/DMFws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZCiF+qsC; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6bb96ef0e96so23334226d6.2
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 08:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722873386; x=1723478186; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhxCvF/bdB7ARkocogWvdOYN1EHnCsxdnqmhWsHwq2A=;
        b=ZCiF+qsCqxRMLED2+T/E8xIycEHjFUQY2Q3m2a5umDH3Q0EM7DnAcURZVX4jlu6hPZ
         W/pkfZAa3o74oB6JEL1rmKm5GmJtCTTJ8qEdo+l0ctjyMt5TS5BRG2DP6gK7SEI5Lc3t
         Ol6DeWRpdfNc3mB2K4US9uYEivmrfQ0Huv4jA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722873386; x=1723478186;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhxCvF/bdB7ARkocogWvdOYN1EHnCsxdnqmhWsHwq2A=;
        b=ZkB7/lXxDo1Ps9UTQ2/P/Y8U+ce3IwTyqiYU0Po4o+vp/aoHmSnzJybVj/ds5zoMRo
         oOJrk/7VvgR2iwfJZhZowb0Wze6uzwDVt7tvQ7GyOj+12rqP51nj77y/91Td/44ruMM1
         ThsGC0RX1QRoVB0WIr9MJy2/PoIoBMVUOY9BoFXZ2IZmM0ocfDYUxiDNGvcb9OtOr02x
         ciW0rfF0iAF8qhaFZUmxWvWHf9eeH2BTpgrQGeuZ1/p/yuaeyJIKekvyp1upGV+6lnqx
         /wn9LoGYE4c6zIyMC1r1Anfh1nkP5dLeH3MFW4+ykLgaVjXrFqdJHitQaCck+2lq34zD
         cYmw==
X-Forwarded-Encrypted: i=1; AJvYcCXF2fwoHCQ5j0gkAgtfpazH9WBjCDbL+h5NR2n6rhhrV2eoGDje3nHxYA1VM4EVhseXGEE9z/vIJI3+5NQXnfr8gLaBamm+BZaP0Q==
X-Gm-Message-State: AOJu0YzERRr/PyFTeQDECsxSeobNM1roKi2fS+2Kl7vQGzxjX0sAUBAZ
	+SGq/AtlXa5NFKMuz24CA5/c/DUnqmvMZY5mv5MkGLxiwQKI5WWdXsjr/XUoxMHiE/8lxdyk1o8
	=
X-Google-Smtp-Source: AGHT+IEwx9e+GqA0leGYKclHMAl1PbtzUOvvHPN/iNDPajig1I0aF9xs5/nvmV18kcl022LsrQwFUw==
X-Received: by 2002:a05:6214:5f01:b0:6b5:3eb:6cf6 with SMTP id 6a1803df08f44-6bb98418c6cmr149141966d6.40.1722873385875;
        Mon, 05 Aug 2024 08:56:25 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb9c87d8afsm36781846d6.132.2024.08.05.08.56.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Aug 2024 08:56:25 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-44fee2bfd28so466541cf.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 08:56:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUMrd9/QTtDvbIMZa7PtlKB+XbtfEx77/O4uwFYU7U9k7On9PH+0OCrX6HiogteouGnOsFXzSwatILF4TuM8SyNB8gnLvCgXefsmg==
X-Received: by 2002:a05:622a:13cc:b0:447:eeb1:3d2 with SMTP id
 d75a77b69052e-4519b760378mr4844061cf.27.1722873384362; Mon, 05 Aug 2024
 08:56:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <gq5fcttutomphgfrwrtloqzczia3uc5qpont3lrowocan2xjc5@ubfabhsh3mfl>
 <CA+6=WdQuFYbADjG0i_zWMGYmw95H1U_McqCw4CLW0+Gate50YA@mail.gmail.com>
 <CAA8EJppoj1Y2675UOp=JH=-HLdYuuzfr2Sxy1zzkvLosmrRQNw@mail.gmail.com> <CA+6=WdQ6q=Zmji8KxCPYK17pFY4UAUBOykd5Tx4N_RZ1MfgOdg@mail.gmail.com>
In-Reply-To: <CA+6=WdQ6q=Zmji8KxCPYK17pFY4UAUBOykd5Tx4N_RZ1MfgOdg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 5 Aug 2024 08:56:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V+bKW7aeD9hSkSE=pAOUpGyvhGqLhLmL6_z=+iBU8Urw@mail.gmail.com>
Message-ID: <CAD=FV=V+bKW7aeD9hSkSE=pAOUpGyvhGqLhLmL6_z=+iBU8Urw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Move the sending location of
 the 11/29 command
To: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, hsinyi@google.com, airlied@gmail.com, 
	daniel@ffwll.ch, jagan@edgeble.ai, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Aug 4, 2024 at 7:38=E2=80=AFPM zhaoxiong lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Hi all
>
> Do you have any other suggestions for this patch?
> Looking forward to your reply, thank you

Please make sure not to "top post". Folks on the mailing lists
generally frown on this and it's a good way to get your email ignored
by some people.

At this point I think folks are waiting for you to post the next
version addressing comments. Specifically, things you'd want to change
for the next version:

* In the commit message (and subject), "refer to the commands with
their names" (Jani)

* In the commit message, address Dmitry's concern. In other words, say
something about the fact that this doesn't cause garbage being
displayed on the panel during startup and why not.


When sending v2, don't forget to include Jessica's "Ack" on patch #2.

