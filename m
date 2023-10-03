Return-Path: <devicetree+bounces-5542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAB07B6959
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2D3932815E4
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DE922F0E;
	Tue,  3 Oct 2023 12:47:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900092915
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:47:56 +0000 (UTC)
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B35A6;
	Tue,  3 Oct 2023 05:47:54 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-565e54cb93aso463480a12.3;
        Tue, 03 Oct 2023 05:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696337274; x=1696942074; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vjl1Ep1JqHB2U/AgaW1DmtTzRpgVOsnx8TJ7GUMj9hQ=;
        b=DuvzrO1qqpMHvQDvkzY7jEhv2HqPCZoqrFZY/lfCpMWIVL7zGibOQWMdZb0HZKWkt9
         2x9t79260m3E41YPKsVaMwp24/Y3AXGHif11z3GRDBn42ySEUgRbQTNC7ggclO5bqrbe
         /0q8m5NtI4dMd0Nogl0oF/fR0JjrAXvqcvZy90su/9pOemErP71lRAkNYIhrEdllA0cU
         N442Vois5AkT5Atq1U0IZ3w4xdisAxLIV16upuYtw8zo4WZw+Vz/Ji4pqZGZ9JbdE+jE
         lgOlX/p11G2LJUMzZYOIuApI/aaWB/j+nqiwxZrm6qpIkFJe/6z+ux6hSWdRIX3PGK5+
         ln2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696337274; x=1696942074;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vjl1Ep1JqHB2U/AgaW1DmtTzRpgVOsnx8TJ7GUMj9hQ=;
        b=vBGZd6YeWX6FF2GOWU1HnCs783pofap69Qb4S1WgHkmPFhm4U83uRaVKOEcBSldS+Y
         rOAysW10zCfo200WMeMxzLVaLioVRHuJDzpWq06rnhrYl1kD0K2Kg+5S3R3KuHMqts4X
         Z3GWkFYLnpf2rzV1iRJ719UtcpjTqrCy81LVY5AHmsspxcYT2IbwhZVK5ri74wtssARS
         9d7lkJ38FSlekSVcQh8hFhUIpphhKU90lOXEtLb9aCQbj5P6iTgPU7PUSFN8WkrdTUz+
         mkv0+OVJNhqwrVZcuCdRgsrPM19B3qfFUgSqBXr1jLCDUjfLnWwlZevpkuvsIL41KUV6
         VL8Q==
X-Gm-Message-State: AOJu0YySIPhhtUeUaGlRZFcbXXOqCfrC3kp3EabUILQXO3Pigy8jGdwB
	8XTqmJ4E6lmy7XfTpiCmazYvF0LLUsavzw==
X-Google-Smtp-Source: AGHT+IGXpyVVBkt4ltfXSecY1pXkuWIkChNBZU/8K5myl+wp5qa4gSCF4OHfYwz2XfejSCpnSGjJmQ==
X-Received: by 2002:a05:6a20:1008:b0:14d:cca3:a100 with SMTP id gs8-20020a056a20100800b0014dcca3a100mr11444815pzc.36.1696337273833;
        Tue, 03 Oct 2023 05:47:53 -0700 (PDT)
Received: from [172.16.116.58] ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902b28b00b001b890009634sm1436879plr.139.2023.10.03.05.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 05:47:53 -0700 (PDT)
Message-ID: <706a8f30-847c-2641-aeee-6c4d4692e573@gmail.com>
Date: Tue, 3 Oct 2023 18:17:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 1/3] dt-bindings: Add beaglecc1352
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
Cc: greybus-dev@lists.linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 vaishnav@beagleboard.org, jkridner@beagleboard.org,
 krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com, kristo@kernel.org,
 robh+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231002182454.211165-1-ayushdevel1325@gmail.com>
 <20231002182454.211165-2-ayushdevel1325@gmail.com>
 <20231003113017.z3yyjscvvinwnyy7@putdown>
From: Ayush Singh <ayushdevel1325@gmail.com>
In-Reply-To: <20231003113017.z3yyjscvvinwnyy7@putdown>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

>> +
>> +  reset-gpios:
>> +    maxItems: 1
>> +
>> +  power-gpios:
>> +    maxItems: 3
>> +    description:
>> +      The device has three power rails that are exposed on external pins VDDS,
>> +      VDDR and DCOUPL.
> Shouldn't these be regulators? The power rails are input to the MCU,
> correct?
> The properties should be something like:
> vdds-supply
> vddr-supply
> dcoupl-supply ? (not sure what dcoupl is, but description should provide
> 		that info).
>
> the gpio controls for those can be modelled by regulator-gpio ?

I picked up power lines from "CC13xx/CC26xx Hardware Configuration and 
PCB Design Considerations Application Report" present under "8.14 
Network Processor" of CC1352P7 data sheet.

But now looking closer, it doesn't seem like DCOUPL can be supplied 
externally for CC1352P7 and thus should probably be removed.

Also, it seems like for CC1352P7, VDDR must always be supplied 
internally (The data sheet states: "Internal supply, must be powered 
from the internal DC/DC converter or the internal LDO"). Thus, it should 
be safe to remove VDDR as well.


That means only VDDS needs to be present for power line.


CC13xx/CC26xx Hardware Configuration and PCB Design Considerations 
Application Report: https://www.ti.com/lit/pdf/swra640

CC1352P7 Data sheet: https://www.ti.com/lit/gpn/CC1352P7


Sincerely,

Ayush Singh


