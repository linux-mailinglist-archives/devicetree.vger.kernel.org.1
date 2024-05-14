Return-Path: <devicetree+bounces-66879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 800FD8C5693
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 15:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BA63283778
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 13:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2556B1411F9;
	Tue, 14 May 2024 13:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iwcHZivL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE81140E30
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 13:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715692131; cv=none; b=fotSRlaIkv6P9id2g6SH3gOBgEk6exXJqRQBOEbKEErpltwqnSaAmHXXmhqmE4SVK4OEsmxKPCIDNzH7+h15/CiTNczez/Aa7UGhCqQKhME/LWTketaKjhU/TYufL9lsxoH0vqkD58/hy5LH3qZbksjjYdmUUf5hi/YR9evJq3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715692131; c=relaxed/simple;
	bh=lJ4M28ShGbipfUlXRuryczQZJv4W7HNw0NKMqTL9vm0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NFmLJRdpQfk6KWe9+HYTnRMY3aq1FrqxwObUKy7JTZuS7c+2C5SMnizwOSD9QYdLpisdjItW6oD20U9VnON1Py0/t4qukqQtT0Bp7E09kCIK/GQrGTWh2i0T11sK3rTjojVlDgsn/qx/NN53+MdTEzkyT6N8miQ4zrR3DvIVw1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iwcHZivL; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56e69888a36so113705a12.3
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 06:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715692128; x=1716296928; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L7YTa9xv3vHa0uYpcB9xiMfmcwkDWM/7SRo5P1u8PZg=;
        b=iwcHZivL7mqNKcRjOHhQyETHzoZi6px1ZUFlTnmW93JbSNfGIUmCPxT+mxaxTd66Il
         2q6HLWXKyMfbLQalYqMsERAEtVH8KqXUMMp9EehSzvCHOOKXsNwAFclViw8C4Guiij9X
         lN+BwOKZtWknXtr3mAs0O6EwYz8xjZEh6eYGzKPXgFbLKwnsalCTtxHU1qD99MNmOawX
         Trk3GEYV/7v20hHDDN3uo9ZrcgverceF+iuRwlepJPcuYnNYdpOX0b2UH18TFCed/Pnt
         dvNMCEjkT59Q28csMMOPS0gJ+E7Y1XFgCoIbdAx6N5M5R+BLptRvdSFBAvaLzuXVOAgz
         C01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715692128; x=1716296928;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L7YTa9xv3vHa0uYpcB9xiMfmcwkDWM/7SRo5P1u8PZg=;
        b=YMnvVIFSnDlAyS+aIcJXpC8Iz1A+T5uunLS627mkWIHD074Y0SCryb0FuGlYW31jEO
         7Y3KodPoKDlx39Jr6xZxTpYmn+cFU+f2cEeKi+KQUQHoh09ZpAUBnX5CabSr+SjR/9E8
         nFfDUVMYaVUnObPTJyH5Pvmg5R3G0Wu4O4j/y4hkpsDQox5txdtG0JMLqWvYL4nubelq
         7FvpQA/FP1vJJFBR8B9fD7gYtY975Cl0Y54L3OlgsZmsadNDD+ToMgi/aZhYJZVn0V4T
         Ylaj7PcAJzURQrdcYQnEWpl8xfaeKy2+bCTp+xUDJpTPgUOvNHV7P5sw/QgWWY5KSE7Y
         JArg==
X-Forwarded-Encrypted: i=1; AJvYcCWNKHKWX/p7OMuRnRtjH73VkWo8QVrCX28FhyOJ5e7to8Es8JwaitxFig0460RYvL45V2zmAxU0Z1/yK1acYbiVHRL2PI5tXCTonQ==
X-Gm-Message-State: AOJu0YxaH5nbK3f1FN0I/IyjMJL4ypqYm57QEqmwFsOOWc3g5zWP5xfk
	S3iDYUstS3rNHSmPiCEc78cVGjrR59O1IbYO96rG6W2HQzpbhW7tjNN6Gj1neQ==
X-Google-Smtp-Source: AGHT+IEu0s0hnS1XYl6UiC9Z+DGGQBL3NhlIQ4iFpvrPafqjZmv+iQEAeWTewWvrOR5RUBuRVMY6ZA==
X-Received: by 2002:a17:907:1b28:b0:a5a:5f31:7663 with SMTP id a640c23a62f3a-a5a5f31777bmr549608366b.56.1715692127703;
        Tue, 14 May 2024 06:08:47 -0700 (PDT)
Received: from [127.0.1.1] ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781cf91sm719572466b.1.2024.05.14.06.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 06:08:47 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Tue, 14 May 2024 15:08:40 +0200
Subject: [PATCH 1/2] dt-bindings: ufs: qcom: Use 'ufshc' as the node name
 for UFS controller nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240514-ufs-nodename-fix-v1-1-4c55483ac401@linaro.org>
References: <20240514-ufs-nodename-fix-v1-0-4c55483ac401@linaro.org>
In-Reply-To: <20240514-ufs-nodename-fix-v1-0-4c55483ac401@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=926;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=lJ4M28ShGbipfUlXRuryczQZJv4W7HNw0NKMqTL9vm0=;
 b=owGbwMvMwMUYOl/w2b+J574ynlZLYkhzTor5ZqQpXy/+Q/wqj3ncyaCYBuWC2MqHYUnzWXrPN
 J+KC9vZyWjMwsDIxSArpsiSvtRZq9Hj9I0lEerTYQaxMoFMYeDiFICJJC9k/8mYybitWIO9tDBy
 UvthqzbedQcbJNse7M0Rinvu3Fq0v9N13SebGXEix/bvSN99cu0BqTblxlmu95Var9mpRJ2/80T
 KwKQ/VNTg/e8Q8bqpabs0P39gNrlTYth29Mm+Tfz17ltX9R4V743br514Zp3m6TNGhhtD+t5Fvn
 5a398ia/zgUqDh2U/6Ubs4Zuv47or05TUIc9W93Fa8x6qds+/0bc6HHtduTIvwORp6x6P/rVp8l
 VNOkC5v9+FpBWuC5raFvVDZWMfTu+bNFpHb0UtTWxfNXL2oYePv5Dlyb+uNuPj3RiYa9KnoLzH+
 u4H/98MzzMHVP/Ok63XMf+/WdfkwRep9WWzscp/cmJlaAA==
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

Devicetree binding has documented the node name for UFS controllers as
'ufshc'. So let's use it instead of 'ufs' which is for the UFS devices.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 10c146424baa..37112e17e474 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -273,7 +273,7 @@ examples:
         #address-cells = <2>;
         #size-cells = <2>;
 
-        ufs@1d84000 {
+        ufshc@1d84000 {
             compatible = "qcom,sm8450-ufshc", "qcom,ufshc",
                          "jedec,ufs-2.0";
             reg = <0 0x01d84000 0 0x3000>;

-- 
2.25.1


