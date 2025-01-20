Return-Path: <devicetree+bounces-139719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A0FA16ADD
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 11:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EC5D1885BB3
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 10:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 126911B4F15;
	Mon, 20 Jan 2025 10:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dooBRSTW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8C31B413E
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 10:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737369423; cv=none; b=a3wFh6UYcR0T6/6pgLQvcZPRT1ZQfq/MvpGnAwNf/bTdJLUlItjNBvcT1vOdhlgMr/6tCWTCQsalZq2k0P6cqhslpV1Cc5IfDVEe365krM/895XJi19VVS8Dm5FHHdrDIvEOVR87cPHSSBL7gXbxBhouV2DuCFUbGxbYcXZ7ad0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737369423; c=relaxed/simple;
	bh=cGFMswoitNfqWi4DCybe65q9S8zd6SKRugROMu9Z7iI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dCBrAxirkueBEpnSXlGRWAwC9zBFlkxcGVd9+fA/W03gim8JisRtH20YF/p5I3xJTBJHnTN5yFhSj6TXC1brweR9iKnXNNhdaqr4zqLOO5dxbEtfLCBXtmfzZ3njOFeP88YYtnKB3/VsQWkBPDp4GQfFgwTFePZ68kRGP+BsRVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dooBRSTW; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e46ebe19368so6199152276.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 02:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737369420; x=1737974220; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yFMrrqx1Qoj4jKMtWUIzCNPzlSldcF1l8F6opL+IAIw=;
        b=dooBRSTW+SswPghO2yDrLisFda15AuH0fzbvW1JH5OrykVSv3HVKZMSjrmAXZxzhYL
         DBxKF4olbLhGvg+ue6ktrUaFH6iw5Mkb665Hx3jwr44sqNCMDJQlHY75Zd2+NyItDJJw
         YdpwMUuL+j4H2ck1LMrxl1edSngGvJvD1gcFJ77Fetwq2OBLL685i0dwGZx4nw/yljJw
         1ugZ4DCMkyDWiFOQemk32i4v8aqRkIajkJrG3oTx08citS0xRiixrtbODSxq1ZsMdK+T
         vuhJMyDUYla2Tynb03+Afe7b8wn3Z/WSbj+v7JQFvMh0reYkDE6I29Up0Zd5VQR6Pzty
         iwqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737369420; x=1737974220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yFMrrqx1Qoj4jKMtWUIzCNPzlSldcF1l8F6opL+IAIw=;
        b=aU/Pg3jXV68jlTB6/PmUv2JdEhH0C4WNMI5rZAXeVCYrmMqf534aT6x3IIw3diLizS
         y7Ol/IUJ1HDEQxPAHIDuG46sCmYgpptaSldOy8NWSZwapoU11bYLojh5mNH/Br3t8aJ4
         Oipll2HLJQxWL2xMG/vU5xjjK1T/WJ6Xuugk9xhM3Oevptl9akxRU3/KWRfl1lrvuts9
         WJZeTE/o33o8aYwfR78V75DTF6YD+o7+zue+EXX4bQfqvt+1X99YwbhdSvMID0Ki9dF1
         5CqIiZHdcaqSE062BQ3rAAdgEfEYBZNZjOfPlPsK6pj1StWcD+IwRnLctCAcCRZSUxSo
         agTA==
X-Forwarded-Encrypted: i=1; AJvYcCUTkPHNAo493kbCXtrW8dxmitpnWbNTsoE+EaA9eWrI7o8vcycejrPXHoqdtBuc5Wv8ZnTW51+yQrIc@vger.kernel.org
X-Gm-Message-State: AOJu0YyqavWdD2I3atj0GIX/9+0Ve5ckgcqScNklPhjNjKZ/KZOCpn54
	bIe+9JmT2uczjvnAWAN2meTMMoQlw7c5qgh2GxLmxkh2d11yPXdV613ckzSlAY2nFOFmQtqf6Xp
	51EiOpmWL9KC+qSuWjvrwZOOg9GKvAOQAgnrxyGawKZYXkffo7yk=
X-Gm-Gg: ASbGnculyJIQBf/m2wrXYMWE9YVYrB+IlOPr/CMkRdnxCYtXqAhuo81vFAk/M9UVLPJ
	DcKRB7bRweQJWAVyPebsc5Qgu5RKBl13m558orxyf8XN508l3nWU1DKL2mrkhtfqX05jgMg0vBR
	PQwET8AA==
X-Google-Smtp-Source: AGHT+IEDFCAj6TxNDA1GeMvnXyrXJYIlHEdBB7VN2ZztntxUp7ZfarbFRwu3Cdl/7oTaC1y81QjFGWBmbL1x3HoYYnI=
X-Received: by 2002:a05:690c:3809:b0:6f6:c924:befa with SMTP id
 00721157ae682-6f6eb671b22mr92127387b3.14.1737369420253; Mon, 20 Jan 2025
 02:37:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com>
 <20241108-qcs615-mm-dt-nodes-v1-2-b2669cac0624@quicinc.com>
 <cgg3s6f555eb4jl5segz7irwx2kkza7w6zucfyo7myrbjhng3v@2qmyrobzakhd>
 <71635b71-71e4-4c17-add1-bf41ce770632@quicinc.com> <scfoxmstfqgvqmxovb7h5gulh6bjhgexs6yxe2n75izc7sawby@djphyr2ilei3>
 <97f5f5b1-b4f9-4d0d-88fb-4c7a0f1c26ac@quicinc.com>
In-Reply-To: <97f5f5b1-b4f9-4d0d-88fb-4c7a0f1c26ac@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 20 Jan 2025 12:36:49 +0200
X-Gm-Features: AbW1kvalUCoaK3fdSfJjJnzJOeramfJ4qP389PafQbuwuKgJociukqEgg9MZhIs
Message-ID: <CAA8EJppOHw5u_dMW=uXgyp3NSJmv9fwNvEL63NCqOpXUKPz5vA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add cpu scaling clock node
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 Jan 2025 at 12:34, Taniya Das <quic_tdas@quicinc.com> wrote:
>
>
>
> On 1/20/2025 2:16 PM, Dmitry Baryshkov wrote:
> >>> This doesn't follow the bindings, does it?
> >> I will add and re-use the closest target compatible.
> >>
> >>>> +          reg = <0 0x18323000 0 0x1400>,
> >>>> +                <0 0x18325800 0 0x1400>;
> >>>> +          reg-names = "freq-domain0", "freq-domain1";
> >>>> +
> >>>> +          clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
> >>>> +          clock-names = "xo", "alternate";
> >>> Are the DCVSH interrupts?
> >>>
> >> This target does not have DCVSH interrupts directly connected to the
> >> CPUFREQ-HW.
> > So, does it require a separate LMH driver, like the one used for sdm845?
>
> I will check how it is handled on QCS615 as it is closer to SC7180 and I
> didn't see any LMH handling there as well.

At least sm6150-thermal.dtsi declares two LMH blocks.


-- 
With best wishes
Dmitry

