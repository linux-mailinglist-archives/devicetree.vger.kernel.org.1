Return-Path: <devicetree+bounces-5192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C37E7B58BB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D1CEC2834B2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7101E514;
	Mon,  2 Oct 2023 17:26:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580F31E503
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:26:33 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 866BEB4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:26:31 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d894b8b9b7cso4196271276.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696267591; x=1696872391; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cWIcP9wX0mT1aYX41AeZZPoQ0U59y7qnUZSn5QwnCXg=;
        b=KpBC4mKlNPmqoL/3NXbFUrF4WjyZoOQuqaPC2/NtMWHZcdum1LR2u1PN5anOAr2K0F
         DH/bacF/gV15eYLhZqzVsTMzyKuFUsGrbdykJOVN9z3e4VeTGq/1K59fzcwd85aD1bPu
         a1dW4y1ithLa3Y2gICai9X1bDfRuRJwqPafrnmrtBVWG6RQzPvELXet88ZZhRuO0/QPn
         EHxEk8310syqMqvtOzVz8s9OwBxXGQJP4s/BaDd+dlMe451r/325mERSLFuGACZ3XzNi
         QetBsB4U4vgQGLlRSOPUv3nfFjON4u9asyRXMrT8Psxo+/4vjbr6uxB+D10u7qH1vrIN
         7Vxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696267591; x=1696872391;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cWIcP9wX0mT1aYX41AeZZPoQ0U59y7qnUZSn5QwnCXg=;
        b=M/PTBcajP9kx8ztitx1xZ4Thww4mT0QrYhjKvyc8ayQ0NjiFd+iQaiQgtT6kiDdk6B
         o66gVritF6pwDsqTpjbhMpwT1ppHF2aLkuub3Dw+F+bqK5KiN9pE0WYGFbc/nYR2xY3Z
         CiOX03R7McdxczhH1NTnDk8IAQn3/ILJSRpyx73XdL6ElRCwpH5jlf8YRASdhjJJu8Tl
         D8gYxz9SnlKZWfLT8O0HGUo9cjg0j4UDrpUxnhtXEwhFGDOV8tBqd00AZJZGGPjJGjFg
         zYTlRA4tygZ2vUHXpPiBN14Zvl2QEca/z+WYZpt91BmtAqUlqcsE52IDlttqRGX/dIox
         1i0A==
X-Gm-Message-State: AOJu0Yy3afN0k5/n3ZAhpscTx44oKRQCW2lVc20ocOO5toNria35O+Sj
	8WcXXxCU3GPOEtQKYR+z1N/canrzPvEvDTETa2Qhsg==
X-Google-Smtp-Source: AGHT+IFssR1DQ3n6Ot+X24EoXCpTIhEqGvK257G4k1IeGTBppDIe2H1NqvRflZMEtb/Ibet2AS3AiXbvBb2Iw7TdOb0=
X-Received: by 2002:a25:6903:0:b0:cb2:7e6:191c with SMTP id
 e3-20020a256903000000b00cb207e6191cmr287905ybc.20.1696267590732; Mon, 02 Oct
 2023 10:26:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
 <20231002-topic-sm8550-upstream-type-c-orientation-v2-2-125410d3ff95@linaro.org>
In-Reply-To: <20231002-topic-sm8550-upstream-type-c-orientation-v2-2-125410d3ff95@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 2 Oct 2023 20:26:19 +0300
Message-ID: <CAA8EJpp2_eW+YukTq3eAFGXxtZ+YWYVkzEP9Qhs20TxoXy-v7A@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] usb: ucsi: glink: use the connector orientation
 GPIO to provide switch events
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 2 Oct 2023 at 13:21, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On SM8550, the non-altmode orientation is not given anymore within
> altmode events, even with USB SVIDs events.
>
> On the other side, the Type-C connector orientation is correctly
> reported by a signal from the PMIC.
>
> Take this gpio signal when we detect some Type-C port activity
> to notify any Type-C switches tied to the Type-C port connectors.

Have you checked, which UCSI version is implemented on SM8550?
Is there any chance of GET_CONNECTOR_STATUS / bit 86 actually
reflecting the correct orientation?

>
> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---


-- 
With best wishes
Dmitry

