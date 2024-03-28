Return-Path: <devicetree+bounces-54136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E1B88FB56
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E77129D7C4
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8EA664CCE;
	Thu, 28 Mar 2024 09:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v3jrSrfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F1734545
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711617958; cv=none; b=BuUO/kl4OQwe652tPe0f5S4daaXo6zGDfJ1vIKPuE7/xYPF2V8tvHSM6RweOMcKNL+F4s/eADHeAY0D7GukNAmvA0a5xGvhuPwc5ihMreoRKKdUHoaY5UpYc9H8mHSCV9My7eFWyQS/NIEH8KswONellDIIs5r2vNNAPQpj3t90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711617958; c=relaxed/simple;
	bh=lW8QqTmIIY5WWx+5Qn+Qztgo2/CDJTQmC1e6LI+YfA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZgUespo51ECXQPPwgom7oXzVi3yr+CizrOUvBoTzsvGl7T3PUpsPKGPdTTSlaAz3S2T5+cG8kpkCMUZiPswjg5Ae5A3bTVkwSISyt95QCz4hKOUI/IQoOh7eQgv4Poy8Z2ttfdpti0t3VNhCRc4OJ7e8xK1JfOQ0t7Y0LrJZ+jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v3jrSrfQ; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so683659276.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711617956; x=1712222756; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lW8QqTmIIY5WWx+5Qn+Qztgo2/CDJTQmC1e6LI+YfA0=;
        b=v3jrSrfQ7otb2pl6j3f+M3wl9clduYqFmhPX2yXMypjMpSBGMPxUzKYFw5cSMvIIf2
         CRCRRwF1/HXeuHD3XmaGVAFeafjBT121aX0zXXdL2MHTELLleoDriGz5r2mgIxoOaeWD
         vlbr7Z5csk+Jv8cMjEDqrJ3o2GPrYngJ2Sy3iagDAD9OCQ7U/l8mHywLhrm1RtzemmFl
         c2REYacBxvOE2sZvtwJVMU4Nw1WjTWccNsjzXcx+ILFd0qeNfnWUs4Z7VMTv6Rw2uFln
         0/2yfHlY4ayktljtFDMvwJZpday2emASH0Dei2uke6eW+GjH5K41TxfT5KvbDKlYsf7O
         9HbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711617956; x=1712222756;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lW8QqTmIIY5WWx+5Qn+Qztgo2/CDJTQmC1e6LI+YfA0=;
        b=InPXiAaicntpvremCGSKA6JR5LeOgKw3qNMu9IKRUC4ghlqC51eyenVwj5Aa3RTTgl
         Yt7CIh9DG7rlpOA+ks/43RUCNJGWIzUNbmO8hbIwqBMetzl1hOSq6uW0yPElM20fTioT
         Lo/VUbz+DSrxCiN3bF/mTm1SkZO5XvZfm3ilLSvzjkMB37I6fs0Mj40vQ1RgK/Hp3b1g
         4COMxZeA6LKlvo0MuMOggkEPICUvcmF7J2VUNfwj+HSeSlDso8vGXHyKgdCjIl+N6f9o
         f2TipGZPuB1HC1dv9OB2JNgOfeiKrHfSxJFXJeLMuNSYcqAeKFdgZ59R7ij2DqaZUYdD
         0bZw==
X-Forwarded-Encrypted: i=1; AJvYcCUR3RK8gSSvH+iooGjXckd8Lx4NSGLlQTRQ4sE19EWzxJteGgnjpVkxBwE7o+18uzskT/tArehsgnyHifn0Ug2ohihI97QrqsQKsA==
X-Gm-Message-State: AOJu0Yy0nBtMwyIuYX6aWKjlxg3X3T6VSmKP/A2IH67Mn+T21err9/yk
	e2j4U+SzgNndlV2SxkhZDZHnW0HeMC46ShBciZFw+1VyzemcutVEFHMJUYRx+bzjQL+BJMOcNdS
	k5JbLZAWvXJVheAZ2saSOvVFXkcY1+e69hdtO+A==
X-Google-Smtp-Source: AGHT+IEh33r/cMIL950w9pM6WTLyu7qyZj+WM7cEtQOkKt3p9m3geR/QDnirj2kZX/VA91a5L6wD2wnlxO8fyT2VdWc=
X-Received: by 2002:a25:c244:0:b0:dcf:3aa6:7334 with SMTP id
 s65-20020a25c244000000b00dcf3aa67334mr2478797ybf.7.1711617956166; Thu, 28 Mar
 2024 02:25:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326220628.2392802-1-quic_amelende@quicinc.com>
In-Reply-To: <20240326220628.2392802-1-quic_amelende@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Mar 2024 10:25:45 +0100
Message-ID: <CACRpkdbq5iTz6azcdSmsUiaOi97coz_XDg28RwU1GL=SQ3uXKA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Add GPIO support for various PMICs
To: Anjelique Melendez <quic_amelende@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_subbaram@quicinc.com, quic_collinsd@quicinc.com, 
	quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 26, 2024 at 11:07=E2=80=AFPM Anjelique Melendez
<quic_amelende@quicinc.com> wrote:

> Add GPIO support for PMXR2230, PM6450, PMIH0108 and PMD8028

All patches applied for kernel v6.10!

Thanks!
Linus Walleij

