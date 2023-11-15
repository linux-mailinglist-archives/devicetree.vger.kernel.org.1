Return-Path: <devicetree+bounces-14209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F74F7E2B85
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F31C8B20C01
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B14F92C854;
	Mon,  6 Nov 2023 17:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6887C2C851
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:56:30 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7670D99;
	Mon,  6 Nov 2023 09:56:29 -0800 (PST)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1cc3c51f830so35102795ad.1;
        Mon, 06 Nov 2023 09:56:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699293388; x=1699898188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m2JiLGU3s2KC5CtuIF/v5v0hrQFMexnAPPTq2XcVAbU=;
        b=faceN5SnOQATyVbwfLk+WX4wCVXmjFqxhsuoCIKkyxI+9ZM9ZGKZUffecTM5GvH4At
         L7uhDBYoTKOsdlKUG+mU7GK+JXpj5FAk4BmhyiTrrHbBxaOOAldA+SkXHg71ysownnNf
         RSjid2286FWOrTV1LSE9nYQMPW0Ezipgf2nBvokOxDbwbrj+rtFHuRdRboiR25Vc5gcR
         SOsdyX/GauTADPjIaMGOYOwrrsxfKTCwyV8STqKy4Dp9+7Z+m60Bh1M6OKX442tazWll
         45tfv/sB309XpxhP3xBOtAZNrEZELA1rdEYCcVBE28FcDrF7jcqQa2ce8bMHhanJVllF
         or8w==
X-Gm-Message-State: AOJu0Ywe+uI6HT0OOvtJcxLHY7T+6xvDsu3ph6IYtInQCnV2ShCDbJD2
	p346ebcoeXAGahAHmwIrzPVUO+goQpA=
X-Google-Smtp-Source: AGHT+IFIwKD7s3sm65uE7HT8rxOzB6AZxTRmE3vQkBIYawoH5/ytsoH4xg0bWJUM7sJt3cSmSdVFAQ==
X-Received: by 2002:a17:902:6803:b0:1c9:ca02:645c with SMTP id h3-20020a170902680300b001c9ca02645cmr20888180plk.36.1699293388064;
        Mon, 06 Nov 2023 09:56:28 -0800 (PST)
Received: from ?IPV6:2620:0:1000:8411:ac50:9303:758b:edb9? ([2620:0:1000:8411:ac50:9303:758b:edb9])
        by smtp.gmail.com with ESMTPSA id jj19-20020a170903049300b001b86dd825e7sm6191205plb.108.2023.11.06.09.56.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 09:56:27 -0800 (PST)
Message-ID: <5850d5ac-e735-4358-866d-f410b00ba39d@acm.org>
Date: Mon, 6 Nov 2023 09:56:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: ufs: Add msi-parent for UFS MCQ
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Ziqi Chen <quic_ziqichen@quicinc.com>
Cc: quic_asutoshd@quicinc.com, quic_cang@quicinc.com, mani@kernel.org,
 beanhuo@micron.com, avri.altman@wdc.com, junwoo80.lee@samsung.com,
 martin.petersen@oracle.com, quic_nguyenb@quicinc.com,
 quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com,
 linux-scsi@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Wolfram Sang <wsa@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Mark Brown <broonie@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <1698835699-28550-1-git-send-email-quic_ziqichen@quicinc.com>
 <20231106144831.GA317907-robh@kernel.org>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20231106144831.GA317907-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/6/23 06:48, Rob Herring wrote:
> On Wed, Nov 01, 2023 at 06:48:13PM +0800, Ziqi Chen wrote:
>> The Message Signaled Interrupts (MSI) has been introduced
>> to UFS driver since the MCQ be enabled.
> 
> Not really relevant when a driver supported MSI, but the when the h/w
> did. Has UFS always supported MSI? It was added in some version of the
> spec?

MSI support has been introduced in UFSHCI version 4.0 and I think that
the controller vendor can decide whether or not to implement MSI. Does
this mean that the patch needs to be improved?

Thanks,

Bart.


