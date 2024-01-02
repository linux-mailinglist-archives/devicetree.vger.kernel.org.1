Return-Path: <devicetree+bounces-29125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1451582181B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 08:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 318A11C208F4
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 07:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335C923CB;
	Tue,  2 Jan 2024 07:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N1DVmgA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5E52105
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 07:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40d5f40ce04so46200315e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 23:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704181563; x=1704786363; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iHhD+e+1GG2LR5Q+uwUPWMKjzXneKZEYPGVrdDS3Exk=;
        b=N1DVmgA3QG20HYFe8fWTDKWrDtgi2M2/gb+rQdRhJ1T5H1beql8jG6H4UOqTti/7MX
         sOQeko1606byMN1KGo5kz24RAYGdrTwBDga773ky2w+lcge60ZtwGXrUUgwNeI/GMKlJ
         emZDJELz+Dl1SOsUS+Z9sRfwxZYfZDkcGOx+d0y0W0IzJHEw/BjBtPn3KR5PoD66hJet
         0sJ8Nrq6lBBKXfk3CZ5NUcCyZ+1VsSDTPBVkYsC0rESpLM7SsJsPOY93akY3CrDGcK3z
         x/22GYF0d3JczPn95Oi8V9OqfLyPpVmTLQ5mGjaBxEni5Rw3tOU0MbjDRQkvZIJFQrkq
         J0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704181563; x=1704786363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHhD+e+1GG2LR5Q+uwUPWMKjzXneKZEYPGVrdDS3Exk=;
        b=ARMkFaTdLx6AzwmAUoMER+OiNfVCwmbROr2dsBhpOVkI7YmAADjM0wMHUgCCREHCGw
         E1sZcNHSJyGGdAQFaLDtXo1LIPIaZRyFSc4wcQeeIfH2JiOTgQYXoc5SyIHkTwSu5++D
         dfOTFrsQI7lmC5FlqQ2DmGWnB9QF08h/NdbeR5nr0zw77nIFnc8vUk1o2b+oyqDGE3P+
         4ImL+/xYl7zVl+DUVNQnwS3NqJOVTFBojLDEmzH+izmAa2olAi0veudPSpSTD+p0r143
         kf2SRQ3adBzycHThj1YWtycV7SLB8J0mtsTl/jBKewK0XTO5KK3UhVW9T/SOctmj5fw+
         krQg==
X-Gm-Message-State: AOJu0YxbYoKJBzEV2CW/gp7Gzv1u1vv9VG79uVt5stttlO1dEqtAALVI
	LfqrVt6f8ubS+hMFwNCi9Jfs242OrdN2Dw==
X-Google-Smtp-Source: AGHT+IHZM9WS+upGseBJPvyCFjM81kkTRQxUR0kQ5A933R//MIPNKfDQsQzf7os5FOBCXJA8CoAPxg==
X-Received: by 2002:a05:600c:1987:b0:40d:5798:1797 with SMTP id t7-20020a05600c198700b0040d57981797mr6118743wmq.63.1704181562764;
        Mon, 01 Jan 2024 23:46:02 -0800 (PST)
Received: from localhost ([102.140.209.237])
        by smtp.gmail.com with ESMTPSA id o20-20020a05600c4fd400b004094d4292aesm43262533wmq.18.2024.01.01.23.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 23:46:02 -0800 (PST)
Date: Tue, 2 Jan 2024 10:45:59 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>
Cc: Shuah Khan <shuah@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bjorn Helgaas <bhelgaas@google.com>, kernelci@lists.linux.dev,
	kernel@collabora.com, Tim Bird <Tim.Bird@sony.com>,
	linux-pci@vger.kernel.org, David Gow <davidgow@google.com>,
	linux-kselftest@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Doug Anderson <dianders@chromium.org>, linux-usb@vger.kernel.org,
	Saravana Kannan <saravanak@google.com>,
	Guenter Roeck <groeck@chromium.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 0/3] Add test to verify probe of devices from
 discoverable busses
Message-ID: <3271d300-74c9-4ef3-b993-a8ddeda6076c@suswa.mountain>
References: <20231227123643.52348-1-nfraprado@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231227123643.52348-1-nfraprado@collabora.com>

Life hack: Don't put RFC in the subject.  Especially if it's a v2 or
higher.  No one reads RFC patches.

This patchset seems like a low risk patch to apply.

regards,
dan carpenter



