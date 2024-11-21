Return-Path: <devicetree+bounces-123542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB899D50B6
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 047C92837C7
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 16:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4368819FA93;
	Thu, 21 Nov 2024 16:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UinRx+EL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864B919E992
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 16:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732206532; cv=none; b=MdDJEHyKg8E6voZoKoljQZ2RLGZ++5ZFqOZdtXtzwguaVy4L728yJ8AaBltfo00G6he/YIxWd5PsHvDv7KqitpuLOKNL9NM5lp3rk0JcqiZPBQOLdDvbi+qBuoYRv01xUNeGnZ9K4D5XpVsm+IOZzW5IGt4mB6EU3RCQa/1Hy+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732206532; c=relaxed/simple;
	bh=MGKmVjnk8yoDkXuExTllKnxldDA3sHkKgKmYP7xY74Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W9trpG24tdLvP66n763Myz29TrtNGznwM3qYk1orrYEeazROXACJPWQJmp88N9onStVvHI+11EXmdKtI9yv6xOdrXMCRG+chmQBK/I1D5jWOl8zSuFmtmRwMEGwO5AJztu/ACrqSEW1kD7c20F7p40Z/eSV5rERSINxHdqjH9+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UinRx+EL; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6ee745e3b2bso16689107b3.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732206529; x=1732811329; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9TXJDPjbxfNTgXBJjbMA4nZmwtyITDhR1t+eI678Jsg=;
        b=UinRx+ELSUQ8Cl9nzb7fNsK0LSsWCdyVUkHXf/wGS95oveUb1NqPcPXYYE2fJnAoyC
         4uLIoTEsaH+Z0HXZ0psUKcpKxUhHPtWpymCA+flJChItbBseHt4qjWkLCP80on5faD7V
         p937jG0ufTdaFGKcB/5+xGgbWtlc0nx81g06j6YNtJdAh0QAkAxKMbJhs5DG/meAZiSR
         pWelGB/IJaR3fCUpzkk+rsVpg15Ieq7TvnExVW35021i69w972fyhAUOfsSZuX4pZWWq
         xD4zwq64aeR7ahES5tdh0nttwX7hpNBYPG2KOK1ed4FKZI+rPDjnJ6AE9mb+R7VXsWBa
         9DBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732206529; x=1732811329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9TXJDPjbxfNTgXBJjbMA4nZmwtyITDhR1t+eI678Jsg=;
        b=ZEM/xy5qHDpYkqdXGR7/fmNia09qd0f1KP6naoAFnwg/YeTpyZ2jAteXtWQ1tTyJh5
         K5H7P5uNVYUpG2UJy4jsA8E4U3FWANyGMoYBs4U/8Qf7Y3B4+XX6us0R4248Lyu6TK5k
         czE2kQ+s9SQnly7SwtsJrZkv7NZPGd7S3iibHACjKS5BamtUs5v7MavqJtmxka9X9UTC
         Q2n5YNicO4Qxe/5uNZsJns5rrRWNLgzYoKDkmb4nSWlAMKWir8QgVyx03cCb+vcJBqx0
         GCttKaxZ6TfMmoQts0Cs6y/E5Tq/ywGkgQGEQXBubosrwLdmGIZ86PZ+Uxh6q9u7J+q4
         yD5A==
X-Forwarded-Encrypted: i=1; AJvYcCWeTV653etUBUVp3cREK6jVHSWapUxqbuma2DvboyvHO6gfl/a7JeH2Edwve/tImLsqJ90heamyDFMe@vger.kernel.org
X-Gm-Message-State: AOJu0YwvZUfN5bY1KaZGUwMLY09PHmuAioAT06kaOVGj3LDkZrqNvGnr
	jKJnJNx98Jvg/fM8jP/P2JNGCke1oKBfihumbemA7OTrmJllM4qplYTXHiMe5E9XPrl0YQhcoMr
	Qk3uhrjGfyrLhk0iT8IuBobF6y1lNVPWOXiC/bw==
X-Gm-Gg: ASbGncvey6/0lA68FYF5Kk+6ycCYrN3mc4v6YbtluhQu8lDE6FZKA3U4+zw6WwtTbkM
	yVjHQmbkgiqmdwJ66gTugI2ie+O1jjA==
X-Google-Smtp-Source: AGHT+IH8jQ21wlz4AC2Gow5w4irMjP5l7uwsR8il3RocOz176o0lukHq/cOQw/yaQ1lFxcITz6OY2O1mdE+2lf5pOlI=
X-Received: by 2002:a05:6902:1242:b0:e30:c850:b77e with SMTP id
 3f1490d57ef6-e38e14bdda0mr3239516276.3.1732206529351; Thu, 21 Nov 2024
 08:28:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241120095428.1122935-1-quic_chejiang@quicinc.com>
 <20241120095428.1122935-3-quic_chejiang@quicinc.com> <smwxrjvdvyxw6tknucl6fb5jpjau2q4jcyjxpunbtt5ep6xsr4@ztuyfkrwgxoo>
 <44932c08-000f-4e6c-89b3-d7556a0a7a88@quicinc.com>
In-Reply-To: <44932c08-000f-4e6c-89b3-d7556a0a7a88@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Nov 2024 18:28:41 +0200
Message-ID: <CAA8EJpq1u6ngze81LKAcGzQEJz=yJ-u6MjvRMJHdKp3aPVnewg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: bluetooth: Add qca6698 compatible string
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	quic_zijuhu@quicinc.com, linux-bluetooth@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_mohamull@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Nov 2024 at 06:12, Cheng Jiang <quic_chejiang@quicinc.com> wrote:
>
> Hi Dmitry,
>
> On 11/20/2024 6:44 PM, Dmitry Baryshkov wrote:
> > On Wed, Nov 20, 2024 at 05:54:26PM +0800, Cheng Jiang wrote:
> >> Add QCA6698 qcom,qca6698-bt compatible strings.
> >
> > Why? Is it the same chip as WCN6855 or a different chip? Is it
> > completely compatible?
> >
> They are different chips. But it's compatible with WCN6855.

So, do we really need new compat? Will/can it use the same firmware?

> >>
> >> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> >> ---
> >>  .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml   | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >> index 9019fe7bcdc6..527f947289af 100644
> >> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >> @@ -18,6 +18,7 @@ properties:
> >>      enum:
> >>        - qcom,qca2066-bt
> >>        - qcom,qca6174-bt
> >> +      - qcom,qca6698-bt
> >>        - qcom,qca9377-bt
> >>        - qcom,wcn3988-bt
> >>        - qcom,wcn3990-bt
> >> @@ -175,6 +176,7 @@ allOf:
> >>          compatible:
> >>            contains:
> >>              enum:
> >> +              - qcom,qca6698-bt
> >>                - qcom,wcn6855-bt
> >>      then:
> >>        required:
> >> --
> >> 2.25.1
> >>
> >
>


-- 
With best wishes
Dmitry

