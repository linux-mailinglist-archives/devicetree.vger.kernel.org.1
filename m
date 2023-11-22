Return-Path: <devicetree+bounces-18048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D38C7F4EC7
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 18:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 363F0B20C84
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 17:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71619584FC;
	Wed, 22 Nov 2023 17:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E47411B6;
	Wed, 22 Nov 2023 09:53:58 -0800 (PST)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1ce627400f6so63195ad.2;
        Wed, 22 Nov 2023 09:53:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700675638; x=1701280438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9x8CsMUGTdsi5KPdkfQH5uxztLGIUnhqBarImAkbXp0=;
        b=Qc0qvrJzvtu8utNsWERjBxpNc1sQwAT2RF+RU6sfdeymVFRlf3Aq+FKUIdJkaLTadP
         K9zOQoGK1l58YtcRbmPosCtLYZlB2Zam6j6IxOP3Mk9CnP8Yb70vEe3AZ6N1gl5eiutV
         BzQk603SxVIcgqVt33BojJUGCAtC8z5kYVZ9R6ToDnpW5/w4N6IaZkrqwge9JkMg0QYs
         Vt9A09nkV6Kpa4SvaYDqcWJ/COGTK0VOq0T3UZ3f8ZzpPdzoepdsGI9D9uqrSFs+kEM/
         +rpv1LDCZd4F0baPeq6C+1Vf1Ke8rUFLzODbI4hl7mckec1coYufNpKW95HoRh1Z1ov1
         NDjA==
X-Gm-Message-State: AOJu0YxJj2xpW3xpUBAxsRKa5bA3Qe7E2DT/zPsETGBvKW1CV2Pt7RG7
	rZfux5A8b0HvxxsO2qiGER3ZgzwlUyM=
X-Google-Smtp-Source: AGHT+IFzb5usn0fE7Zv2UqxPoMh/a3YXsRf3gak5hOkukkrSoLaetesuiE4QV/VtqZawsfR8M9e50A==
X-Received: by 2002:a17:902:8341:b0:1c3:1f0c:fb82 with SMTP id z1-20020a170902834100b001c31f0cfb82mr2563544pln.41.1700675638221;
        Wed, 22 Nov 2023 09:53:58 -0800 (PST)
Received: from ?IPV6:2620:0:1000:8411:9d34:90db:9557:9413? ([2620:0:1000:8411:9d34:90db:9557:9413])
        by smtp.gmail.com with ESMTPSA id j3-20020a170902758300b001cc0d1af177sm10070853pll.229.2023.11.22.09.53.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 09:53:57 -0800 (PST)
Message-ID: <f9640827-4100-4ebf-8281-46f2d656540a@acm.org>
Date: Wed, 22 Nov 2023 09:53:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: ufs: Add msi-parent for UFS MCQ
Content-Language: en-US
To: Ziqi Chen <quic_ziqichen@quicinc.com>, quic_asutoshd@quicinc.com,
 quic_cang@quicinc.com, mani@kernel.org, stanley.chu@mediatek.com,
 adrian.hunter@intel.com, beanhuo@micron.com, avri.altman@wdc.com,
 junwoo80.lee@samsung.com, martin.petersen@oracle.com,
 quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com
Cc: linux-scsi@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wolfram Sang <wsa@kernel.org>, Mark Brown <broonie@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <1700629624-23571-1-git-send-email-quic_ziqichen@quicinc.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <1700629624-23571-1-git-send-email-quic_ziqichen@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/23 21:06, Ziqi Chen wrote:
> diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> index 985ea8f..31fe7f3 100644
> --- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> +++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> @@ -87,6 +87,8 @@ properties:
>       description:
>         Specifies max. load that can be drawn from VCCQ2 supply.
>   
> +  msi-parent: true
> +
>   dependencies:
>     freq-table-hz: [ clocks ]
>     operating-points-v2: [ clocks, clock-names ]

Does this patch break support for UFSHCI 4.0 controllers that do not support MSI?

Thanks,

Bart.

