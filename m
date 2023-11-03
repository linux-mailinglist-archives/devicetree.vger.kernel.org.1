Return-Path: <devicetree+bounces-13767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E957E055A
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 16:15:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CC83B21183
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 15:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 648FA1A5B3;
	Fri,  3 Nov 2023 15:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WLW0DLxh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269E21A5A5
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 15:15:01 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC9AD48
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 08:14:52 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-32d9d8284abso1276866f8f.3
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 08:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699024491; x=1699629291; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JQmtajR/Lo5kWZGagJsWizBqcJuSRUlM8N3Px2Mnlzc=;
        b=WLW0DLxhI6kNo/vp1JLsCwd5z2ctRoiSgmOMUmrtNkjrJS8ksnB6Lnr9KClsKfeR6s
         zLs+7jabuSJYFFvMJVzKgEF9uj3trz0B868fvE33Ysywxoue0FB5HxzP4RQ5HoAC2tIJ
         XATbApGnxbjk6HmtsQ58KIvR5Os8kzjii/IiExYsHHaot80spaquxlfVqiOrS/JU9SUb
         U9VBacCBzWuuGy+0wt5kwf+qeHEkSJomzZUrLXU+dnwkxphzqm7EETBxDC+mVpzxr3hT
         uZN1pW91Ys5b+etp8ISYEmrCUJCZseUxQbASPULys4blLcC2v3g05tV+OLy+9/FCJBN3
         8vCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699024491; x=1699629291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQmtajR/Lo5kWZGagJsWizBqcJuSRUlM8N3Px2Mnlzc=;
        b=CsmhNqD/cfVcsU9tiiIAE9HpDn8lDYe7Xbo3fx6gJElJFzZmKcPPS2uIKavSbA+2hc
         QSy4fqlcl3e8aiPvKYEqFsKt4zopEc5Ix+cfszSB4KauSIJwQP5SrOWowmDtgOnolvZV
         wXxrs+wRjiZNb6b3C1kdH6P0Xu6kvhLFpV46DVxV8FQuj7JAYth9l0zAi+CKND2ZgG2g
         E4wmyKYSKjQeu9IvRwZIegMrySwtpN5qBsxr7wjGrEUCAZ8hN/t9WNdp70seD0CTWEIi
         dvh1XJL8HQRUcwOw03ABi02hon/kYxcSETO8uAdiS0AFH0vm3NrhMm0oyt+TVXYkkDfs
         SJ2Q==
X-Gm-Message-State: AOJu0YxpBuy8sL4y3k6WSm3KKuqmaH0S12XMKmW6LKj/dPAYmZgDoesc
	YLAv7g5ahMevbEm4Eh22eraaNg==
X-Google-Smtp-Source: AGHT+IGD/xeq7bY+n2+xagtvTANWbDHhn+sJbmaTPg5nPjbUi9qXD9HyIs80yHobXO3D3Wqg4buNJw==
X-Received: by 2002:a5d:6f1a:0:b0:32d:b2cf:8ccd with SMTP id ay26-20020a5d6f1a000000b0032db2cf8ccdmr27222679wrb.47.1699024490887;
        Fri, 03 Nov 2023 08:14:50 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id k12-20020adff28c000000b0032f99801273sm2065454wro.66.2023.11.03.08.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Nov 2023 08:14:50 -0700 (PDT)
Message-ID: <e700133b-58f7-4a4d-8e5c-0d04441b789b@linaro.org>
Date: Fri, 3 Nov 2023 15:14:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 2/8] usb: dwc3: core: Register vendor hooks for dwc3-qcom
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, quic_wcheng@quicinc.com
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 quic_ppratap@quicinc.com, quic_jackp@quicinc.com
References: <20231017131851.8299-1-quic_kriskura@quicinc.com>
 <20231017131851.8299-3-quic_kriskura@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231017131851.8299-3-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/10/2023 14:18, Krishna Kurapati wrote:
> Currently on QC targets, the conndone/disconnect events in device mode are
> generated by controller when software writes to QSCRATCH registers in qcom
> glue layer rather than the vbus line being routed to dwc3 core IP for it
> to recognize and generate these events.
> 
> We need to write '1' to  UTMI_OTG_VBUS_VALID bit of QSCRATCH_HS_PHY_CTRL
> register to generate a connection done event and "0" if we need to
> generate a disconnect event during cable removal or mode switch. Exactly
> what is done by "dwc3_qcom_vbus_override_enable" call in dwc3-qcom.
> 
> When the disconnect is not generated upon cable removal, the connected
> flag of dwc3 is left marked as "true" and it blocks runtime suspend.
> 
> The goal of these vendor hooks is to let the mode change and cable removal
> notifications from core reach the  glue layers so that glue can take
> necessary action.
> 
> Before flattening the device tree, glue driver is not sure when the core
> probe was completed as core probe can be deferred. In this case, glue is
> not sure when to register vendor hooks. So mandate enabling runtime only
> for flattened device node platforms so that glue can know when to register
> vendor hooks.
> 
> The following are the requirements aimed in this implementation:
> 
> 1. When enum in device mode, Glue/core must stay active.
> 
> 2. When cable is connected but UDC is not written yet, then glue/core
> must be suspended.
> 
> 3. Upon removing cable in device mode, the disconnect event must be
> generated and unblock runtime suspend for dwc3 core.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>

What happens to this code if you

static int count;

1. sleep in dwc3_probe for 10 milliseconds
2. return -EPROBE_DEFER
3. if count++ < 5 goto 1

i.e. if we simulate say waiting on a PHY driver to probe in dwc3_probe()

and what happens if we introduce a 100 millsecond sleep into 
dwc3_qcom_probe() - and run a fake disconnect event from 
dwc3_qcom_probe_core() directly ?

In other words if make it that dwc3_probe() completes and struct 
dwc3_glue_ops->notify_cable_disconnect() fires prior to 
dwc3_qcom_probe_core() completing ?

i.e. I don't immediately see how you've solved the probe() completion 
race condition here.

---
bod

