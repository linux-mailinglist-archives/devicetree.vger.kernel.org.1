Return-Path: <devicetree+bounces-13511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CECA17DE6C1
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 21:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00C8B1C20D5F
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 20:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4A9184F;
	Wed,  1 Nov 2023 20:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="THqfzTFI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1AF1B296
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 20:34:05 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7484DB;
	Wed,  1 Nov 2023 13:34:00 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53e2308198eso322058a12.1;
        Wed, 01 Nov 2023 13:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698870839; x=1699475639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/a1Dk27cCdhkJjwH5P/iX9LeZl5g3ELoZUoq2vgHjw=;
        b=THqfzTFIQXST8KN1Qevu0qqMG0xN9nm498MWAOau59stbmUE6bvXE/qYQxwtaX94wC
         7zEgO21JDS2fnClDbhER8uAEPutBIvvXxA0WwJ2URf+2xz4fYgy1dIsomfYVCVowYs7e
         ZTO52Jpz2BRl+fR5VC+c6P0TS3UiZJr3dwL4I8GVPqHRUomtc4mz3SosPtNL5gqgv4lU
         4/5Jij2dZQw2zm7MVmzButIAA5KFziqHy4dADMbwg1fiqOm2kD1d0LspqWgOS7KP8m2N
         BxEfr3RZIlPh+cnw72GoKA7T3lI5aQ9qLZnE+SubW+2GnBybs3+/hPzAYN6Qvtu34WWN
         yvxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698870839; x=1699475639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/a1Dk27cCdhkJjwH5P/iX9LeZl5g3ELoZUoq2vgHjw=;
        b=phYkgQHfez6f7EDUpiFTyt6nX6etQjw1ucB5GVkxpOYT+XkA+5ML+/RzJLwbBQ2PRr
         AF3eI1/f9MYpidlCTNWVXaLvErRjDlJKPwyRhueQhvlSNFuFfe3HyozJ4TUth3k54wXD
         Z6r7KQFZ9NvpmC4xTH/lrWkrS0r7iJJafCTflKIS6BArXtD41F9rauTXfdtyO3z3eaNX
         GEc/whfoxq2lyzeRdqTbZjW1+DIwQg/wtJIoH889z3QQvXpQMRmAoSsVXk2sAArI7Qde
         M/wIC6Io2F0lmg22uW027cIhDlrgmgX3DILgfMyVYzAeHY7W08N9qJtNpYyB15xxqPNc
         oC8g==
X-Gm-Message-State: AOJu0Yxj7vAV5mF0ZPjjbl0g+HqeXI4QAFfVpZWthvpscuvtICQwo/MS
	gGsgJMvS5CpoWisofYYsY/w=
X-Google-Smtp-Source: AGHT+IGl05mGU709qsGrgcg8DzSoxstuVYnl9cTRAuXmjsuQM12ju0jFTR+gw/k7DrlOFYguTjwqLw==
X-Received: by 2002:a05:6402:74c:b0:53f:b964:ddb1 with SMTP id p12-20020a056402074c00b0053fb964ddb1mr14653343edy.37.1698870839174;
        Wed, 01 Nov 2023 13:33:59 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:f152:da56:1dc5:79c])
        by smtp.gmail.com with ESMTPSA id v17-20020a056402185100b005407ac82f4csm1427471edy.97.2023.11.01.13.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 13:33:58 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: n2h9z4@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux@roeck-us.net,
	skhan@linuxfoundation.org,
	wim@linux-watchdog.org
Subject: Re: [PATCH v2] dt-bindings: watchdog: qca,ar7130-wdt: convert txt to yaml
Date: Wed,  1 Nov 2023 21:33:57 +0100
Message-Id: <20231101203357.48478-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231101202722.48056-1-n2h9z4@gmail.com>
References: <20231101202722.48056-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v2: updated commit message. 

v1 patch: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231031201602.28827-1-n2h9z4@gmail.com/

