Return-Path: <devicetree+bounces-239871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F216C6A389
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CC2FE4F796F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8319836404B;
	Tue, 18 Nov 2025 15:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rKuh0xHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EE5361DDE
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478025; cv=none; b=BVtjdHrU0UeW0ZXfkn6FW3Bwemc49BB4WWzw/kxaFBRgNNVG1N8LvMENrVbXkUB0aOPwTlDipoVHykrQcnQ1XA1GJaCWwiz6aHS2CWueuoMRjL3toW2sVdjguJouopQpuYN0Y/Yn+kQnpQ6HCkYaRVB+l0lIIjXpn8368Yi/Z0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478025; c=relaxed/simple;
	bh=yYBIMUYPEMQkGXlIun/Z5XghzFBT2+jZnb6mvUooXYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=izGx6tySmdeiKBwAYu93I1ghP+3CURPTypS9BlUCNkFBy+ErnhA5knltwUCOdmeoaqLppp0amINAbadKd5VRnERCFfp5TPBJG5U+PWeJ8JWDtj4nuU0PzmwycW3OXubn5jwDG0vKo3xJaaU3dB0ZeBDz21OTc6iVZhj/SpDmNcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rKuh0xHW; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b737502f77bso509102866b.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763478022; x=1764082822; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T6ycbeHCv6YzVBfiihvNrBQTxTs7GIypa/MVav3f8pE=;
        b=rKuh0xHWyB7JqCwIBvmmAqR4ygE3xvBbpD2tbDnnpG5h8K3b+OxsL4PHDAooxaKHx4
         gS7P3vIsXlUVzeamoTgNAXIU6xAHSCXvFG4si7YXwxk91zX9VW+OgjXfhrhhIcBUH+9g
         JXynzdDgTm/5K2jBKDQ/euvBa2J9WSZ5UG6DWnTuuUpVzdisjs/Nh5XMqV5N0QdT2uJA
         AU6tlwuZh9Y6F+IIRfZtmJ5ZfhpcIwnOhTkvAkJQzRBQC4RcCFz0syEPa5DJzPD1l5fg
         T7lszg2+oPqXzsr927p2cyjgd+1Q6hWeOJtHbbTV3YmCzRGZboEudvyRS63eR0UzvUCe
         zJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478022; x=1764082822;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T6ycbeHCv6YzVBfiihvNrBQTxTs7GIypa/MVav3f8pE=;
        b=U5izCVJyncMTdHOSZVbgpkPXlOfWfioaCOhZ9VzQhWw4p8Dw3JPyFsZFJkhqZxIZqC
         Pt9etJrQrb4G4KYZ6tXoZ42Pi7rjScLGWQpLep84lsyh0DooVkG0sAQZjt83vSVX995T
         AzMvfhIvGEWu+np4LpuDhvGW+mAc6Seh6aR7LFqL5I9KsK9kOYMzCTrjq22VFHNaN2v/
         Bdo8wh4LYhy8Yu1kuPmDPyw5ojZYPyMRZFSgbl13c+mjEBTqkBXupsfOm03egG/t96Sw
         QUH1iRUgae932psT9l4JiRrICt9qeijkCNBOhM5NM5j0iE45uWnMHBdAfBy8Oa5aiILE
         Rfqw==
X-Forwarded-Encrypted: i=1; AJvYcCWOzvJaKB8nLT9RMjUQdCE0P9ZfL1rP4cOV5e6KhXd5flfOeai4t2mQX9h29CXu5UJidgeySqhnv/9d@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4bkb90vuuCGSWFtn0j2Ea0q2+JvqQXFcwWIJhZMAmpiTJoGip
	z7ErCThWVskq91NaVCNzMaflo9SkpOhlssRLnjMNfAZwlIj91zjkApYOr+Rqie5SI88=
X-Gm-Gg: ASbGncs2xgc30yHOUsmUeV4OrMWSDsHnKLcmGl3L+7UhNernTojmlzlWOFxAzAXQFGh
	c6uwdKVtA8n943BSZ0352rZElrjewYIUGxhNUV30a5Lc7aQjt/3BaTomO26EwFKMgsPKw0jebfp
	DdWwE7HasFu78K54NNIt+nuAmUFpB7lzfdS4fLZwrHK5G43q04Qht0/YArYXMVJKyIeV36zq7M0
	E/O6NrxsjLv6lnnRYUH8sQCNQuQBIxWqTZWtezftPwCNObFBG1BrXwG6wZ8bwj2JStdubmCMjAz
	Eo3xtpA4umGqbT10xgka5ATRAuUKKUVKOqlY3pzF45pg4Mj6zJG4NGxSekniuKs+J/Z1Waf7uNC
	1u2qxADRzZG3OLIcMLLgPnCMn5R3ZccTxUZ+6lkSTYBR6qw0Uk/U6/fooEHOV2F19Y6draqoORo
	1QzSUMfLsdmedhEIdokgCGurwYdAuxFXntRpjC7EN0Vw==
X-Google-Smtp-Source: AGHT+IH+SRzIG78Le1UGkTuOPhMOU5+HcBSFJxx8Le0nV1kHbKsPT2vPJv/0gTUUe2wMNoZCRo3Mcg==
X-Received: by 2002:a17:907:980d:b0:b70:ac7a:2a93 with SMTP id a640c23a62f3a-b736793d8demr1658422566b.43.1763478021813;
        Tue, 18 Nov 2025 07:00:21 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad456bsm1398335566b.21.2025.11.18.07.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 07:00:21 -0800 (PST)
Message-ID: <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
Date: Tue, 18 Nov 2025 15:00:19 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/11/2025 03:29, Hangxiang Ma wrote:
> +                  <0x0 0x0900e000 0x0 0x1000>,

Why aren't you starting @ 0x0900e000 ? seems to be omitting some of the 
registers in the ICP block. Should start at +0xd000 not +0xe000 ?

> +                  <0x0 0x0902e000 0x0 0x1000>,

Same here.

> +                  <0x0 0x090d7000 0x0 0x20000>,
> +                  <0x0 0x0904e000 0x0 0x1000>,
> +                  <0x0 0x0904d000 0x0 0x1000>,
> +                  <0x0 0x09057000 0x0 0x40000>,
> +                  <0x0 0x09147000 0x0 0x580>,
> +                  <0x0 0x09148000 0x0 0x580>,
> +                  <0x0 0x09149000 0x0 0x580>,
> +                  <0x0 0x0914a000 0x0 0x580>,
> +                  <0x0 0x0914b000 0x0 0x580>,
> +                  <0x0 0x093fd000 0x0 0x400>,
> +                  <0x0 0x093fe000 0x0 0x400>,
> +                  <0x0 0x093ff000 0x0 0x400>;

The rest of these registers start at the defined block addresses in the 
documentation.

Unless there's a very good reason for that, please amend.

---
bod

