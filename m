Return-Path: <devicetree+bounces-6611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B337BC000
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 22:08:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2347F1C208DD
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DDA641AAD;
	Fri,  6 Oct 2023 20:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hqOKcNXA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C6A3B28E
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 20:08:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B21BF
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696622891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lpCwVK4YdUU2xA1XEQ+cf6KoEZIaM/xayFYhSIqPSJg=;
	b=hqOKcNXAxbmSVkUwu/f2EvzlHPqXYgvLxGkSC+eHpqL/wfzdXFh55PFzLioPNxtZ/VwMEi
	EVzsTkSXzGc05tI6WkQCr29IXZ8Y8ekMkAsHVWIEFslMb1nleHBiC6/vOgiNFgb2BlBpJJ
	2k48maR+A00pw2ex/ZpzXYtmwieX0Ok=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-54-FU1eo8ihNQi_FWdhhd_bFA-1; Fri, 06 Oct 2023 16:08:09 -0400
X-MC-Unique: FU1eo8ihNQi_FWdhhd_bFA-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-668f1e0dd3fso23612876d6.3
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 13:08:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622889; x=1697227689;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lpCwVK4YdUU2xA1XEQ+cf6KoEZIaM/xayFYhSIqPSJg=;
        b=oKcmQ6Uu0JTO3PqzRzsBkpgd+30k0GRvX90rIlOAUweE7s81F+ejQVJF9PpWw/Tdpj
         6nIBMuaGJxbQFIVDdJWtvl5uP+juN1zmFUtJdrjSeZgDdUFvJy/S6avUXfqgj437xIsb
         XSCKSWqyIJ4p0UV4dz8bJxI+iQ25AwN3vNddqp3RnKIV90kLIGi4udvXE3NGhPUaU/Ds
         DuP/pjdSNWxwpHa2ghgzwXS81Du/dJMIV19ebPci4kdMpRRc3TJnOjVHkk9w0G6EVYyj
         JhqZ0mpnp+0QANIkJfxVaNJXk8ocLLIro0sjoYENevZcwUs8rhKybbAvnGkW48RfQRPW
         fXfw==
X-Gm-Message-State: AOJu0YwjYVYzR+t3shRDuzXfPF7QNkd9y86bICMl8uInChjGqaAgs4hB
	fsmtaRm86vVzr7u9DII8czBpQlZTVr1IDE9qEzQXtWovGiNba5QdEmps5LcDL0BSu4I6SFocOG2
	aJZSr/B6+YiNWdePWM8iVCg==
X-Received: by 2002:a05:6214:440d:b0:636:afa1:345d with SMTP id oj13-20020a056214440d00b00636afa1345dmr9486277qvb.17.1696622889420;
        Fri, 06 Oct 2023 13:08:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtIR+NwYLWDaMKa7uZ2+P63aN2xD3Bov3ZVMEy/nvU1rz9LawJvySc/NGWRrS0Nqml9Zmq/Q==
X-Received: by 2002:a05:6214:440d:b0:636:afa1:345d with SMTP id oj13-20020a056214440d00b00636afa1345dmr9486265qvb.17.1696622889140;
        Fri, 06 Oct 2023 13:08:09 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id w9-20020a0cb549000000b0065b14fcfca6sm1654528qvd.118.2023.10.06.13.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 13:08:08 -0700 (PDT)
Date: Fri, 6 Oct 2023 16:08:06 -0400
From: Brian Masney <bmasney@redhat.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: Add new compatible for smc/hvc
 transport for SCMI
Message-ID: <ZSBpJkrsLxly2jTr@brian-x1>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20231006164206.40710-1-quic_nkela@quicinc.com>
 <20231006164206.40710-2-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006164206.40710-2-quic_nkela@quicinc.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 06, 2023 at 09:42:05AM -0700, Nikunj Kela wrote:
> Introduce compatible "qcom,scmi-smc" for SCMI smc/hvc transport channel for
> Qualcomm virtual platforms.
> 
> This compatible mandates populating an additional parameter 'capability-id'
> from the last 8 bytes of the shmem channel.
> 
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


