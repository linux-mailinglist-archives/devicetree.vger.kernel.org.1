Return-Path: <devicetree+bounces-13609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B85C77DF402
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72FEA281C7B
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11B3E18E12;
	Thu,  2 Nov 2023 13:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GoRetBfs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E4917740
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:40:09 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4496ED7
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:40:05 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-543456dbd7bso4000606a12.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698932404; x=1699537204; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MPXqa1Md7LiMjgxlnK3HQLQ5fI2nNY0ghcU9lcn1N40=;
        b=GoRetBfsGp0wCVNtwugEMDA+TCgLiCJ3UfpdC6v1DRxHDfUVRCgnvNmozIBiLTRRqq
         nO67ccLnPDbFJUMnEn4/oHtOWTk9E1SIipQiHyPBgXtuHgblGcApEraccQZ+JYYW0/KG
         JreT21XC8FxN/kQ5wwghXub7pzY+DzHHdNM9Ae5nQcQW1+cV4d8R1F/XW2E9GREOKBlL
         9NjU7at1IJ9amQ+LoU1Gq5Q1MBKk1iEikvWKyVZkfDIw7kchG0kTLvNuZ0cMnF8IZ5Bm
         p9M3EC79K/+WF3TcgpOtCiOYGugsoKe9wUDX8QO82iYADPkDDTEVmeWnJTTK2WxQ4ZJ/
         berA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932404; x=1699537204;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MPXqa1Md7LiMjgxlnK3HQLQ5fI2nNY0ghcU9lcn1N40=;
        b=ViNiy0f2lA5Oe/8T7Wllbygb+sRUnfpAHtnu6hun51BfPBnJvoscVT1tEFkPqNbiG1
         4LjgNDo/AcuI2bOemuiHWBTpNPFfgcYsM+PJZWchiXmvU1ePeQaWi8LlkIdve70DjI1B
         6IBBq2IPo5V1k5fpg4Wybpk5JrCv2TT6cIdltoZd1nNJB5Hq5av0NWMhSWcIUMhGXE2P
         dANk8jEHIhQETOxWLWq9TCwkPt3qipRSKEJgtzpSCnCdq8jPkA9GUFkclcH8uwLs8je6
         iXOthmFsko+J03UZgJV1VX61BmGIVhINkZh64YP3LyoK+xu2E92jdpdQJQNXuNBOfMKe
         P6fw==
X-Gm-Message-State: AOJu0YxJEuyiDnc3O/K1OxETME5USm+Pd3M6qDgqTjaRKs24g1fvdO2l
	TNs3ArAG/Eie2eVR4wciqWnVqg==
X-Google-Smtp-Source: AGHT+IEsswBAHuzLu9D196nfD85BvKPRmI1i++AtJn78PYYpRezGZ2PqhT52cYwFQxCQqEHMUKjFIg==
X-Received: by 2002:a17:907:72d0:b0:9a9:f042:deb9 with SMTP id du16-20020a17090772d000b009a9f042deb9mr4563834ejc.19.1698932403774;
        Thu, 02 Nov 2023 06:40:03 -0700 (PDT)
Received: from [192.168.1.118] (abyj199.neoplus.adsl.tpnet.pl. [83.9.29.199])
        by smtp.gmail.com with ESMTPSA id v9-20020a17090606c900b009b27d4153cfsm1164662ejb.176.2023.11.02.06.40.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:40:03 -0700 (PDT)
Message-ID: <4b8dab99-05aa-9f50-def4-85058294f069@linaro.org>
Date: Thu, 2 Nov 2023 14:40:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH 6/6] media: qcom: camss: vfe-17x: Rename camss-vfe-170 to
 camss-vfe-17x
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
 <20231102-b4-camss-sc8280xp-v1-6-9996f4bcb8f4@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231102-b4-camss-sc8280xp-v1-6-9996f4bcb8f4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 02/11/2023 12:41, Bryan O'Donoghue wrote:
> vfe-170 and vfe-175 can be supported in the same file with some minimal
> indirection to differentiate between the silicon versions.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
But you directly assigned v170 to sc8280xp, without any renaming or
meaningful changes I think?

Konrad

