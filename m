Return-Path: <devicetree+bounces-256583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B093D39989
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 20:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DB41300889B
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 19:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E8B291864;
	Sun, 18 Jan 2026 19:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OzLuUgWs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037992222D2
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768765268; cv=pass; b=AQERh3s+usvpg9II3XdsBQqQhFT+JorLULABMQ3xBmIKwgmCYTIZdqmOQjkwVstPqPo3T73RT5E5NfgPewDdfqMdXWMQMxscLu7FUW3ND0iurJtC2EPzkAtJhzEKbrPmCaXRniRg57aJERsjGWydMP4UIfpijN/U6QhtmEy6BaI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768765268; c=relaxed/simple;
	bh=VlYoL6q2Ncy8SBeulWbd5DRRucKY3L7Th1Ngh8Vt77s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cGIgB4i8QkuiT0DbcV9B+J9MS74EFf7PWA5NW/3RyltUJ1FWV7V3dPZvWNP6c93K3j6VHDNHgNeWJ9NL0VkwU8xfNSgAqEfhbv9OvFFZAmlrhqXbGpBNgV/Zbpg64QiGaNAKl6qZr1qD7IP64g7jRAW2xmD5vS3HP9URCb3Y1kE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OzLuUgWs; arc=pass smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-45c7400259bso1353187b6e.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 11:41:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768765266; cv=none;
        d=google.com; s=arc-20240605;
        b=kKQ/i7IdPcopqRMot53IkgoPhtnPW8jUVWRcldmLP0pQRDrxz1RQXhEBpYALkYQA5W
         a9Eb3zQQQ77fjvWzcsLH1ARLjlrotNg0FY5DDnTR7qzfRkaywck/efBnJH0BWWWIB82W
         WNUJ2PU8yx0aO7iWZmaJOsIKXLxZ+qzwftmxkKT2kttoxWbx5n7USjb15kgi6MNT7aql
         7+QH1M7F5M+aQYPCltoYrOrR5EQBP9pQcETLNA4rvV9nqpXZKFJC8Nw62gTdtp5prBkA
         +yWmrhT3cIi4g8aKGnokhfO6tev8iD3XjaNN/lxHY6FuA/qmMw4gO1f3Ofjn8Al7NafS
         sgWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jiL1b1PFmfmDNWDFtV+c3j0QUNNL09k3KF9wFBCvRSQ=;
        fh=SJXiBKbZch6mU0u1UQi9r+jtmNlvXsxWvyGIlpl3Hvk=;
        b=CuEg0IePw5QwdP0ppxUnHw9M9x45WXT9MxxVRBeIXumWn7H/h7dXq6X9JQPoj3Dl+B
         HPFCNdDKjkPVZtZMyp+dU343P9KJI4KhOD37tA20b4puUutlRoJ4h5PbpdDge5M4qqZs
         IeKwPVpyLXTrQKRu6R3/X69VpP0SgpCvYyCgdKOowQCw+3u4OaamSSMYknKm+Gio/2uc
         q5tIdmaisEaIKpjBe8RNkyR5qAhiqGlKDyhPcmG3StfpbW1UFRkm6ddqD+hrJX+pgK1s
         vXpKNZbTptwQ6Zq/REENCDEEA9tVc22/Z/BiOz6Ot5rijZbVbiyP7+tPHAQRK611oeCR
         mzUg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768765266; x=1769370066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jiL1b1PFmfmDNWDFtV+c3j0QUNNL09k3KF9wFBCvRSQ=;
        b=OzLuUgWsB9whaHiKmrz8CXLV1uJBGMSUarroaho1gA/V5AOYgNQLI1FOBxWfXWlEyG
         Em0DbQiixlMZLn87V82b1C77znb4yUv3CLpV7SmQlPGrpjPIS0XqWor+d52hPdD1YSvf
         PE9CU79hkvngiot3laDqK07aOLU5pG5DdEpyqEFf+VstwWID+b10BRFZ445tDrgpW0S1
         eLBtx8o3CGPYi0lhbANzv3ritZ1YeYvMZNUe+xHNoyU2hAcw84yVdYZX+Mxj3eXR1q2D
         8bwvslH0wUhk0xrP3XzLTN/qOjfzn3PlJXDK4CpFGZf29eSD5/QW20i21w95aB0gYXFk
         qY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768765266; x=1769370066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jiL1b1PFmfmDNWDFtV+c3j0QUNNL09k3KF9wFBCvRSQ=;
        b=xCgDBifXVs7TLd1fuRYu6eHT0vs2F5tkaLRw5+HNUg2RfgVFLtHa+USKiQNSCKpkzt
         0ZmrivFZ1kS9AoGx/STTeuzV7jXcU1rRc8nI8PelGSOYLnW7dVeIzkkYwgbBkHjUsOQV
         owc6YJhpEyVw9NaIcowqtdUsvO+0DfrioaDuR2MdPAG81Ml6lS2kdg+oZpIZ3zX+VmKR
         WARb/7UdcS6nexUUIsD7S23jPO1qUcxDzSzjL7OyO944K9BOM9NffCLyJ36fZurdLTOm
         /htBMzKAioHsuPx/ODgwNaBKIsrjRCDKoHmMznH644bNTsRpjaEBceMYT5SzCLx19GjX
         Vlsw==
X-Forwarded-Encrypted: i=1; AJvYcCVKVlRWjjsss12XIp9wLj1alLGOl9viP6sla+smlDyhtHUsh0l9+Bw49+v9zKLjvTriREiOfi3dBGzt@vger.kernel.org
X-Gm-Message-State: AOJu0YxSxlU1ZCo7gdzU+Kz4UFK334RIjuq0CH1JS898TjoGicjluz8x
	sqpEf/A17l7G6NRilqhuOz7SyqtSpoIghMhFdzdXCtJcWRkibgPMdDnYtpl/352yINfY63IBYTw
	DZbYC9VmIhM0NsoP2K+VK15Jvn1CWdLo=
X-Gm-Gg: AY/fxX7mitJodgW8VLpcbJ82+FS64dr9eyZc0ocX9LFf0D/wt6LOFgtKmYnf9eTdY6X
	/irPPqoc1cVYzRKwfrp1/QgXDYtnX8GdaOQrgZ9fSYX8I1J8YoHtViKeWFGiz67qP+XhZo0MqvS
	JRjSIgw8PFCr8bpDUMP4xfLrYMFoblFjn9MFw419qGsomK6fyACah1AaEa8V7yi9clqp76wsllk
	u21PPejLdGVa8n6SzXTYgc4JaoJ8y76mn79Mxmt0XHjwR+Bx1+SUlV5LxKs8t1wF5qfqFmX
X-Received: by 2002:a05:6808:150d:b0:45c:925b:5848 with SMTP id
 5614622812f47-45c9d8a85ffmr4206718b6e.45.1768765265793; Sun, 18 Jan 2026
 11:41:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com> <20251211-sm8750-cpufreq-v1-1-394609e8d624@oss.qualcomm.com>
In-Reply-To: <20251211-sm8750-cpufreq-v1-1-394609e8d624@oss.qualcomm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 18 Jan 2026 13:40:54 -0600
X-Gm-Features: AZwV_QhGzuuUkbceOTO3fSfYzXGuV86Jyo_JbalH5_JClGBRCgr4eBFXDHD4cFk
Message-ID: <CABb+yY3v7RQTEvnd3g94ntY-COHwKcYPuDfh77bEKzZ-PS65EA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: qcom: Document SM8750 CPUCP
 mailbox controller
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Ajit Pandey <ajit.pandey@oss.qualcomm.com>, Imran Shaik <imran.shaik@oss.qualcomm.com>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 10, 2025 at 1:02=E2=80=AFPM Jagadeesh Kona
<jagadeesh.kona@oss.qualcomm.com> wrote:
>
> Document CPU Control Processor (CPUCP) mailbox controller for Qualcomm
> SM8750 SoCs. It is software compatible with X1E80100 CPUCP mailbox
> controller hence fallback to it.
>
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.ya=
ml b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> index 9122c3d2dc30fade96eaf54aee41f890327deb6c..9d99af46e531aec615f91f1c1=
39ce4fa482e41c3 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> @@ -19,6 +19,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,glymur-cpucp-mbox
> +              - qcom,sm8750-cpucp-mbox
>            - const: qcom,x1e80100-cpucp-mbox
>        - enum:
>            - qcom,x1e80100-cpucp-mbox
>
> --
> 2.34.1
>
Applied, after trivial rebase on top of "dt-bindings: mailbox: qcom:
Add CPUCP mailbox controller bindings for Kaanapali"

Thanks

